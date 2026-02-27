// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_autoscaler_autoscaling_policy/region_autoscaler_autoscaling_policy.dart';

/// The set of arguments for RegionAutoscaler.
class RegionAutoscalerArgs {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  final pulumi.Input<RegionAutoscalerAutoscalingPolicy> autoscalingPolicy;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// URL of the region where the instance group resides.
  final pulumi.Input<String>? region;

  /// URL of the managed instance group that this autoscaler will scale.
  final pulumi.Input<String> target;

  RegionAutoscalerArgs({
    required this.autoscalingPolicy,
    this.description,
    this.name,
    this.project,
    this.region,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicy'] = pulumi.Input.mapInputValue<
        RegionAutoscalerAutoscalingPolicy,
        Map<String, dynamic>>(autoscalingPolicy, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['target'] = target;
    return map;
  }

  factory RegionAutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return RegionAutoscalerArgs(
      autoscalingPolicy:
          pulumi.Input.asInput<RegionAutoscalerAutoscalingPolicy>(
              map['autoscalingPolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      target: pulumi.Input.asInput<String>(map['target']),
    );
  }
}
