import 'package:pulumi/pulumi.dart';
import '../repository_iam_member_condition/repository_iam_member_condition2.dart';
import 'repository_iam_member_args2.dart';

class RepositoryIamMember2 extends CustomResource {
  late final Output<RepositoryIamMemberCondition2?> condition;
  late final Output<String> etag;
  late final Output<String> member;
  late final Output<String> project;
  late final Output<String> region;
  late final Output<String> repository;
  late final Output<String> role;

  RepositoryIamMember2(
    String name, {
    RepositoryIamMemberArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamMember:RepositoryIamMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<RepositoryIamMemberCondition2?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
    this.role = registerOutput<String>('role');
  }
}
