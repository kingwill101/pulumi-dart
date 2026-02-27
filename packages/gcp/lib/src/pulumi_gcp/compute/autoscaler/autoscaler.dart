import 'package:pulumi/pulumi.dart' as pulumi;
import '../autoscaler_autoscaling_policy/autoscaler_autoscaling_policy.dart';
import 'autoscaler_args.dart';

/// Represents an Autoscaler resource.
///
/// Autoscalers allow you to automatically scale virtual machine instances in
/// managed instance groups according to an autoscaling policy that you
/// define.
///
///
/// To get more information about Autoscaler, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers)
/// * How-to Guides
/// * [Autoscaling Groups of Instances](https://cloud.google.com/compute/docs/autoscaler/)
///
/// ## Example Usage
///
/// ### Autoscaler Single Instance
///
///
///
/// ### Autoscaler Basic
///
///
///
///
/// ## Import
///
/// Autoscaler can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/autoscalers/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Autoscaler can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/autoscaler:Autoscaler default projects/{{project}}/zones/{{zone}}/autoscalers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/autoscaler:Autoscaler default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/autoscaler:Autoscaler default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/autoscaler:Autoscaler default {{name}}
/// ```
class Autoscaler extends pulumi.CustomResource {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  late final pulumi.Output<AutoscalerAutoscalingPolicy> autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// URL of the managed instance group that this autoscaler will scale.
  late final pulumi.Output<String> target;

  /// URL of the zone where the instance group resides.
  late final pulumi.Output<String> zone;

  Autoscaler(
    String name, {
    AutoscalerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/autoscaler:Autoscaler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscalingPolicy =
        registerOutput<AutoscalerAutoscalingPolicy>('autoscalingPolicy');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.target = registerOutput<String>('target');
    this.zone = registerOutput<String>('zone');
  }
}
