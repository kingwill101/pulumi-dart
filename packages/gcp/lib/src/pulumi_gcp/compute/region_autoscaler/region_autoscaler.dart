import 'package:pulumi/pulumi.dart';
import '../region_autoscaler_autoscaling_policy/region_autoscaler_autoscaling_policy.dart';
import 'region_autoscaler_args.dart';

/// Represents an Autoscaler resource.
///
/// Autoscalers allow you to automatically scale virtual machine instances in
/// managed instance groups according to an autoscaling policy that you
/// define.
///
///
/// To get more information about RegionAutoscaler, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers)
/// * How-to Guides
/// * [Autoscaling Groups of Instances](https://cloud.google.com/compute/docs/autoscaler/)
///
/// ## Example Usage
///
/// ### Region Autoscaler Basic
///
///
///
///
/// ## Import
///
/// RegionAutoscaler can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/autoscalers/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionAutoscaler can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionAutoscaler:RegionAutoscaler default projects/{{project}}/regions/{{region}}/autoscalers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionAutoscaler:RegionAutoscaler default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionAutoscaler:RegionAutoscaler default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionAutoscaler:RegionAutoscaler default {{name}}
/// ```
class RegionAutoscaler extends CustomResource {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  late final Output<RegionAutoscalerAutoscalingPolicy> autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// URL of the region where the instance group resides.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// URL of the managed instance group that this autoscaler will scale.
  late final Output<String> target;

  RegionAutoscaler(
    String name, {
    RegionAutoscalerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionAutoscaler:RegionAutoscaler',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingPolicy =
        registerOutput<RegionAutoscalerAutoscalingPolicy>('autoscalingPolicy');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.target = registerOutput<String>('target');
  }
}
