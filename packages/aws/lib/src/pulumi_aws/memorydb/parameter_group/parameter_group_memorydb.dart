import 'package:pulumi/pulumi.dart' as pulumi;
import '../parameter_group_parameter/parameter_group_parameter_memorydb.dart';
import 'parameter_group_memorydb_args.dart';

/// Provides a MemoryDB Parameter Group.
///
/// More information about parameter groups can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/parametergroups.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a parameter group using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/parameterGroup:ParameterGroup example my-parameter-group
/// ```
class ParameterGroupMemorydb extends pulumi.CustomResource {
  /// The ARN of the parameter group.
  late final pulumi.Output<String> arn;

  /// Description for the parameter group. Defaults to `"Managed by Pulumi"`.
  late final pulumi.Output<String?> description;

  /// The engine version that the parameter group can be used with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> family;

  /// Name of the parameter group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Set of MemoryDB parameters to apply. Any parameters not specified will fall back to their family defaults. Detailed below.
  late final pulumi.Output<List<ParameterGroupParameterMemorydb>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ParameterGroupMemorydb(
    String name, {
    ParameterGroupMemorydbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/parameterGroup:ParameterGroup',
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
        registerOutput<List<ParameterGroupParameterMemorydb>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
