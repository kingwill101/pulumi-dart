// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../autoscaler_autoscaling_policy/autoscaler_autoscaling_policy.dart';

/// The set of arguments for Autoscaler.
class AutoscalerArgs {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  final pulumi.Input<AutoscalerAutoscalingPolicy> autoscalingPolicy;

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

  /// URL of the managed instance group that this autoscaler will scale.
  final pulumi.Input<String> target;

  /// URL of the zone where the instance group resides.
  final pulumi.Input<String>? zone;

  AutoscalerArgs({
    required this.autoscalingPolicy,
    this.description,
    this.name,
    this.project,
    required this.target,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicy'] = pulumi.Input.mapInputValue<
        AutoscalerAutoscalingPolicy,
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
    map['target'] = target;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory AutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalerArgs(
      autoscalingPolicy: pulumi.Input.asInput<AutoscalerAutoscalingPolicy>(
          map['autoscalingPolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      target: pulumi.Input.asInput<String>(map['target']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
