import 'package:pulumi/pulumi.dart';
import 'repository_iam_policy_args2.dart';

class RepositoryIamPolicy2 extends CustomResource {
  late final Output<String> etag;
  late final Output<String> policyData;
  late final Output<String> project;
  late final Output<String> region;
  late final Output<String> repository;

  RepositoryIamPolicy2(
    String name, {
    RepositoryIamPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamPolicy:RepositoryIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
  }
}
