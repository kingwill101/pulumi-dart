import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter2.dart';
import 'parameter_group_args2.dart';

/// Provides an ElastiCache parameter group resource.
///
/// > **NOTE:** Attempting to remove the `reserved-memory` parameter when `family` is set to `redis2.6` or `redis2.8` may show a perpetual difference in this provider due to an ElastiCache API limitation. Leave that parameter configured with any value to workaround the issue.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/parameterGroup:ParameterGroup default redis-params
/// ```
class ParameterGroup2 extends CustomResource {
  /// The AWS ARN associated with the parameter group.
  late final Output<String> arn;

  /// The description of the ElastiCache parameter group. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// The family of the ElastiCache parameter group.
  late final Output<String> family;

  /// The name of the ElastiCache parameter.
  late final Output<String> name;

  /// A list of ElastiCache parameters to apply.
  late final Output<List<ParameterGroupParameter2>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ParameterGroup2(
    String name, {
    ParameterGroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/parameterGroup:ParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<ParameterGroupParameter2>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
