import 'package:pulumi/pulumi.dart';
import '../cluster_parameter_group_parameter/cluster_parameter_group_parameter.dart';
import 'cluster_parameter_group_args.dart';

/// Manages a DocumentDB Cluster Parameter Group
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DocumentDB Cluster Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/clusterParameterGroup:ClusterParameterGroup cluster_pg production-pg-1
/// ```
class ClusterParameterGroup extends CustomResource {
  /// The ARN of the DocumentDB cluster parameter group.
  late final Output<String> arn;

  /// The description of the DocumentDB cluster parameter group. Defaults to "Managed by Pulumi".
  late final Output<String?> description;

  /// The family of the DocumentDB cluster parameter group.
  late final Output<String> family;

  /// The name of the DocumentDB parameter.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// A list of DocumentDB parameters to apply. Setting parameters to system default values may show a difference on imported resources.
  late final Output<List<ClusterParameterGroupParameter>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterParameterGroup(
    String name, {
    ClusterParameterGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:docdb/clusterParameterGroup:ClusterParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.parameters =
        registerOutput<List<ClusterParameterGroupParameter>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
