// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_hosting_traffic_rollout_policy/app_hosting_traffic_rollout_policy.dart';
import '../app_hosting_traffic_target/app_hosting_traffic_target.dart';

/// The set of arguments for AppHostingTraffic.
class AppHostingTrafficArgs {
  /// Id of the backend that this Traffic config applies to
  final Input<String> backend;

  /// The location the Backend that this Traffic config applies to
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The policy for how builds and rollouts are triggered and rolled out.
  /// Structure is documented below.
  final Input<AppHostingTrafficRolloutPolicy>? rolloutPolicy;

  /// Set to manually control the desired traffic for the backend. This will
  /// cause current to eventually match this value. The percentages must add
  /// up to 100.
  /// Structure is documented below.
  final Input<AppHostingTrafficTarget>? target;

  AppHostingTrafficArgs({
    required this.backend,
    required this.location,
    this.project,
    this.rolloutPolicy,
    this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backend'] = backend;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rolloutPolicyValue = rolloutPolicy;
    if (rolloutPolicyValue != null) {
      map['rolloutPolicy'] = Input.mapOptionalInputValue<
          AppHostingTrafficRolloutPolicy,
          Map<String, dynamic>>(rolloutPolicyValue, (value) => value.toMap());
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = Input.mapOptionalInputValue<AppHostingTrafficTarget,
          Map<String, dynamic>>(targetValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppHostingTrafficArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficArgs(
      backend: Input.asInput<String>(map['backend']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      rolloutPolicy: Input.asOptionalInput<AppHostingTrafficRolloutPolicy>(
          map['rolloutPolicy']),
      target: Input.asOptionalInput<AppHostingTrafficTarget>(map['target']),
    );
  }
}
