import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_policy_dataform_args.dart';

class RepositoryIamPolicyDataform extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;

  RepositoryIamPolicyDataform(
    String name, {
    RepositoryIamPolicyDataformArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamPolicy:RepositoryIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
  }
}
