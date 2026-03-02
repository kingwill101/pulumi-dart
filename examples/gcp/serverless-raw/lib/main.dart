// Library entrypoint for the GCP serverless raw example.

// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final bucket = gcp.storage.Bucket(
      'bucket',
      args: gcp.storage.BucketArgs(location: 'US'.output()),
    );

    final pythonArchive = gcp.storage.BucketObject(
      'python-zip',
      args: gcp.storage.BucketObjectArgs(
        bucket: bucket.name,
        source: pulumi.FileArchive('pythonfunc').output(),
      ),
    );

    final pythonFunction = gcp.cloudfunctions.FunctionType(
      'python-func',
      args: gcp.cloudfunctions.FunctionArgs(
        sourceArchiveBucket: bucket.name,
        runtime: 'python312'.output(),
        sourceArchiveObject: pythonArchive.name,
        entryPoint: 'handler'.output(),
        triggerHttp: true.output(),
        availableMemoryMb: 128.output(),
      ),
    );

    gcp.cloudfunctions.FunctionIamMember(
      'py-invoker',
      args: gcp.cloudfunctions.FunctionIamMemberArgs(
        project: pythonFunction.project,
        region: pythonFunction.region,
        cloudFunction: pythonFunction.name,
        role: 'roles/cloudfunctions.invoker'.output(),
        member: 'allUsers'.output(),
      ),
    );

    final goArchive = gcp.storage.BucketObject(
      'go-zip',
      args: gcp.storage.BucketObjectArgs(
        bucket: bucket.name,
        source: pulumi.FileArchive('gofunc').output(),
      ),
    );

    final goFunction = gcp.cloudfunctions.FunctionType(
      'go-func',
      args: gcp.cloudfunctions.FunctionArgs(
        sourceArchiveBucket: bucket.name,
        runtime: 'go123'.output(),
        sourceArchiveObject: goArchive.name,
        entryPoint: 'Handler'.output(),
        triggerHttp: true.output(),
        availableMemoryMb: 128.output(),
      ),
    );

    gcp.cloudfunctions.FunctionIamMember(
      'go-invoker',
      args: gcp.cloudfunctions.FunctionIamMemberArgs(
        project: goFunction.project,
        region: goFunction.region,
        cloudFunction: goFunction.name,
        role: 'roles/cloudfunctions.invoker'.output(),
        member: 'allUsers'.output(),
      ),
    );

    final tsArchive = gcp.storage.BucketObject(
      'ts-zip',
      args: gcp.storage.BucketObjectArgs(
        bucket: bucket.name,
        source: pulumi.FileArchive('typescriptfunc').output(),
      ),
    );

    final tsFunction = gcp.cloudfunctions.FunctionType(
      'ts-func',
      args: gcp.cloudfunctions.FunctionArgs(
        sourceArchiveBucket: bucket.name,
        runtime: 'nodejs22'.output(),
        sourceArchiveObject: tsArchive.name,
        entryPoint: 'handler'.output(),
        triggerHttp: true.output(),
        availableMemoryMb: 128.output(),
      ),
    );

    gcp.cloudfunctions.FunctionIamMember(
      'ts-invoker',
      args: gcp.cloudfunctions.FunctionIamMemberArgs(
        project: tsFunction.project,
        region: tsFunction.region,
        cloudFunction: tsFunction.name,
        role: 'roles/cloudfunctions.invoker'.output(),
        member: 'allUsers'.output(),
      ),
    );

    registerOutputs({
      'pythonEndpoint': pythonFunction.httpsTriggerUrl,
      'goEndpoint': goFunction.httpsTriggerUrl,
      'tsEndpoint': tsFunction.httpsTriggerUrl,
    });
  }
}
