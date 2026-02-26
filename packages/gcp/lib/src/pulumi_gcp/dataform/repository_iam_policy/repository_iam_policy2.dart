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
    this.etag = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.repository = Output.createUnknown<String>();
  }
}
