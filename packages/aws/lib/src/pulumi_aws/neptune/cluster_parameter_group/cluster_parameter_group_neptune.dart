import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_parameter_group_parameter/cluster_parameter_group_parameter_neptune.dart';
import 'cluster_parameter_group_neptune_args.dart';

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
class ClusterParameterGroupNeptune extends pulumi.CustomResource {
  /// The ARN of the neptune cluster parameter group.
  late final pulumi.Output<String> arn;

  /// The description of the neptune cluster parameter group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String?> description;

  /// The family of the neptune cluster parameter group.
  late final pulumi.Output<String> family;

  /// The name of the neptune parameter.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// A list of neptune parameters to apply.
  late final pulumi.Output<List<ClusterParameterGroupParameterNeptune>?>
      parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ClusterParameterGroupNeptune(
    String name, {
    ClusterParameterGroupNeptuneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterParameterGroup:ClusterParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.parameters =
        registerOutput<List<ClusterParameterGroupParameterNeptune>?>(
            'parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
