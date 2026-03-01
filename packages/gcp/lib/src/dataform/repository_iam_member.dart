import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_member_args.dart';
import 'repository_iam_member_condition.dart';

class RepositoryIamMember extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;
  late final pulumi.Output<String> role;

  /// Creates a new [RepositoryIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamMember]. {@macro pulumi_dataform_repository_iam_member_repository_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamMember(
    String name, {
    RepositoryIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataform/repositoryIamMember:RepositoryIamMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<RepositoryIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
    this.role = registerOutput<String>('role');
  }
}
