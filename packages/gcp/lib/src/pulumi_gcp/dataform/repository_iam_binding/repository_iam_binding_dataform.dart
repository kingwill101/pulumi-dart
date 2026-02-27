import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_iam_binding_condition/repository_iam_binding_condition_dataform.dart';
import 'repository_iam_binding_dataform_args.dart';

class RepositoryIamBindingDataform extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamBindingConditionDataform?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;
  late final pulumi.Output<String> role;

  RepositoryIamBindingDataform(
    String name, {
    RepositoryIamBindingDataformArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamBinding:RepositoryIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<RepositoryIamBindingConditionDataform?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
    this.role = registerOutput<String>('role');
  }
}
