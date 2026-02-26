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
    this.condition = Output.createUnknown<RepositoryIamMemberCondition2?>();
    this.etag = Output.createUnknown<String>();
    this.member = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.repository = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
