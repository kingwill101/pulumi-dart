import 'package:pulumi/pulumi.dart' as pulumi;
import '../parameter_group_parameter/parameter_group_parameter.dart';
import 'parameter_group_args.dart';

/// Provides a DAX Parameter Group resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DAX Parameter Group using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:dax/parameterGroup:ParameterGroup example my_dax_pg
/// ```
class ParameterGroup extends pulumi.CustomResource {
  /// A description of the parameter group.
  late final pulumi.Output<String?> description;

  /// The name of the parameter group.
  late final pulumi.Output<String> name;

  /// The parameters of the parameter group.
  late final pulumi.Output<List<ParameterGroupParameter>> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ParameterGroup(
    String name, {
    ParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dax/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<ParameterGroupParameter>>('parameters');
    this.region = registerOutput<String>('region');
  }
}
