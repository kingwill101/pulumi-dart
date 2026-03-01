import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_binding_args.dart';
import 'repository_iam_binding_condition.dart';

class RepositoryIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;
  late final pulumi.Output<String> role;

  /// Creates a new [RepositoryIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamBinding]. {@macro pulumi_dataform_repository_iam_binding_repository_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamBinding(
    String name, {
    RepositoryIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataform/repositoryIamBinding:RepositoryIamBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.condition = registerOutput<RepositoryIamBindingCondition?>(
      'condition',
    );
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
    this.role = registerOutput<String>('role');
  }
}
