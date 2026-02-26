import 'package:pulumi/pulumi.dart';
import '../repository_iam_binding_condition/repository_iam_binding_condition2.dart';
import 'repository_iam_binding_args2.dart';

class RepositoryIamBinding2 extends CustomResource {
  late final Output<RepositoryIamBindingCondition2?> condition;
  late final Output<String> etag;
  late final Output<List<String>> members;
  late final Output<String> project;
  late final Output<String> region;
  late final Output<String> repository;
  late final Output<String> role;

  RepositoryIamBinding2(
    String name, {
    RepositoryIamBindingArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamBinding:RepositoryIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<RepositoryIamBindingCondition2?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
    this.role = registerOutput<String>('role');
  }
}
