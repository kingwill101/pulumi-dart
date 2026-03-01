import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_policy_args.dart';

class RepositoryIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;

  /// Creates a new [RepositoryIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamPolicy]. {@macro pulumi_dataform_repository_iam_policy_repository_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamPolicy(
    String name, {
    RepositoryIamPolicyArgs? args,
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
