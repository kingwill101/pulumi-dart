// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final bucket = gcp.storage.Bucket(
      'bucket',
      args: gcp.storage.BucketArgs(location: 'US'.output()),
    );

    final sourceArchiveObject = gcp.storage.BucketObject(
      'python-zip',
      args: gcp.storage.BucketObjectArgs(
        bucket: bucket.name,
        source: pulumi.FileArchive('pythonfunc').output(),
      ),
    );

    final function = gcp.cloudfunctions.FunctionType(
      'basicFunction',
      args: gcp.cloudfunctions.FunctionArgs(
        sourceArchiveBucket: bucket.name,
        runtime: 'python310'.output(),
        sourceArchiveObject: sourceArchiveObject.name,
        entryPoint: 'handler'.output(),
        triggerHttp: true.output(),
        availableMemoryMb: 128.output(),
      ),
    );

    gcp.cloudfunctions.FunctionIamMember(
      'invoker',
      args: gcp.cloudfunctions.FunctionIamMemberArgs(
        project: function.project,
        region: function.region,
        cloudFunction: function.name,
        role: 'roles/cloudfunctions.invoker'.output(),
        member: 'allUsers'.output(),
      ),
    );

    registerOutputs({'function': function.httpsTriggerUrl});
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}
