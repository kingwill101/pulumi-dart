import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_iam_member_condition/repository_iam_member_condition_dataform.dart';
import 'repository_iam_member_dataform_args.dart';

class RepositoryIamMemberDataform extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamMemberConditionDataform?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;
  late final pulumi.Output<String> role;

  RepositoryIamMemberDataform(
    String name, {
    RepositoryIamMemberDataformArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamMember:RepositoryIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<RepositoryIamMemberConditionDataform?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
    this.role = registerOutput<String>('role');
  }
}
