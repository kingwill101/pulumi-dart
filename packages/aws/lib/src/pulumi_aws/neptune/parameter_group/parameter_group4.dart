import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter4.dart';
import 'parameter_group_args4.dart';

/// Manages a Neptune Parameter Group
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Neptune Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/parameterGroup:ParameterGroup some_pg some-pg
/// ```
class ParameterGroup4 extends CustomResource {
  /// The Neptune parameter group Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// The description of the Neptune parameter group. Defaults to "Managed by Pulumi".
  late final Output<String?> description;

  /// The family of the Neptune parameter group.
  late final Output<String> family;

  /// The name of the Neptune parameter.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// A list of Neptune parameters to apply.
  late final Output<List<ParameterGroupParameter4>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ParameterGroup4(
    String name, {
    ParameterGroupArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/parameterGroup:ParameterGroup',
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
        registerOutput<List<ParameterGroupParameter4>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
