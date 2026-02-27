import 'package:pulumi/pulumi.dart';
import '../cluster_parameter_group_parameter/cluster_parameter_group_parameter2.dart';
import 'cluster_parameter_group_args2.dart';

/// Manages a Neptune Cluster Parameter Group
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Neptune Cluster Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterParameterGroup:ClusterParameterGroup cluster_pg production-pg-1
/// ```
class ClusterParameterGroup2 extends CustomResource {
  /// The ARN of the neptune cluster parameter group.
  late final Output<String> arn;

  /// The description of the neptune cluster parameter group. Defaults to "Managed by Pulumi".
  late final Output<String?> description;

  /// The family of the neptune cluster parameter group.
  late final Output<String> family;

  /// The name of the neptune parameter.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// A list of neptune parameters to apply.
  late final Output<List<ClusterParameterGroupParameter2>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterParameterGroup2(
    String name, {
    ClusterParameterGroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterParameterGroup:ClusterParameterGroup',
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
        registerOutput<List<ClusterParameterGroupParameter2>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
