import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter6.dart';
import 'parameter_group_args6.dart';

/// Provides a Redshift Cluster parameter group resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/parameterGroup:ParameterGroup paramgroup1 parameter-group-test-pulumi
/// ```
class ParameterGroup6 extends CustomResource {
  /// Amazon Resource Name (ARN) of parameter group
  late final Output<String> arn;

  /// The description of the Redshift parameter group. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// The family of the Redshift parameter group.
  late final Output<String> family;

  /// The name of the Redshift parameter.
  late final Output<String> name;

  /// A list of Redshift parameters to apply.
  late final Output<List<ParameterGroupParameter6>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// You can read more about the parameters that Redshift supports in the [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ParameterGroup6(
    String name, {
    ParameterGroupArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/parameterGroup:ParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<ParameterGroupParameter6>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
