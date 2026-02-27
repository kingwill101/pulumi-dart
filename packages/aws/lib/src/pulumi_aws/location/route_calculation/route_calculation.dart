import 'package:pulumi/pulumi.dart';
import 'route_calculation_args.dart';

/// Provides a Location Service Route Calculator.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.location.RouteCalculation` using the route calculator name. For example:
///
/// ```sh
/// $ pulumi import aws:location/routeCalculation:RouteCalculation example example
/// ```
class RouteCalculation extends CustomResource {
  /// The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you specify a resource across AWS.
  late final Output<String> calculatorArn;

  /// The name of the route calculator resource.
  late final Output<String> calculatorName;

  /// The timestamp for when the route calculator resource was created in ISO 8601 format.
  late final Output<String> createTime;

  /// Specifies the data provider of traffic and road network data.
  ///
  /// The following arguments are optional:
  late final Output<String> dataSource;

  /// The optional description for the route calculator resource.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the route calculator. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The timestamp for when the route calculator resource was last update in ISO 8601.
  late final Output<String> updateTime;

  RouteCalculation(
    String name, {
    RouteCalculationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/routeCalculation:RouteCalculation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.calculatorArn = registerOutput<String>('calculatorArn');
    this.calculatorName = registerOutput<String>('calculatorName');
    this.createTime = registerOutput<String>('createTime');
    this.dataSource = registerOutput<String>('dataSource');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
