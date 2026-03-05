// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLifecycleHooksHook {
  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses.
  final pulumi.Input<String> defaultResult;
  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the default_result parameter.
  final pulumi.Input<int> heartbeatTimeout;
  /// ID of the lifecycle hook.
  final pulumi.Input<String> id;
  /// Type of Scaling activity attached to lifecycle hook.
  final pulumi.Input<String> lifecycleTransition;
  /// Name of the lifecycle hook.
  final pulumi.Input<String> name;
  /// The Arn of notification target.
  final pulumi.Input<String> notificationArn;
  /// Additional information that you want to include when Auto Scaling sends a message to the notification target.
  final pulumi.Input<String> notificationMetadata;
  /// Scaling group id the lifecycle hooks belong to.
  final pulumi.Input<String> scalingGroupId;

  /// Creates a new [GetLifecycleHooksHook].
  /// [defaultResult] Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses.
  /// [heartbeatTimeout] Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the default_result parameter.
  /// [id] ID of the lifecycle hook.
  /// [lifecycleTransition] Type of Scaling activity attached to lifecycle hook.
  /// [name] Name of the lifecycle hook.
  /// [notificationArn] The Arn of notification target.
  /// [notificationMetadata] Additional information that you want to include when Auto Scaling sends a message to the notification target.
  /// [scalingGroupId] Scaling group id the lifecycle hooks belong to.
  GetLifecycleHooksHook({
    required this.defaultResult,
    required this.heartbeatTimeout,
    required this.id,
    required this.lifecycleTransition,
    required this.name,
    required this.notificationArn,
    required this.notificationMetadata,
    required this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResult': defaultResult,
      'heartbeatTimeout': heartbeatTimeout,
      'id': id,
      'lifecycleTransition': lifecycleTransition,
      'name': name,
      'notificationArn': notificationArn,
      'notificationMetadata': notificationMetadata,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory GetLifecycleHooksHook.fromMap(Map<String, dynamic> map) {
    return GetLifecycleHooksHook(
      defaultResult: pulumi.Input.fromValue(map['defaultResult'] as String),
      heartbeatTimeout: pulumi.Input.fromValue(map['heartbeatTimeout'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      lifecycleTransition: pulumi.Input.fromValue(map['lifecycleTransition'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      notificationArn: pulumi.Input.fromValue(map['notificationArn'] as String),
      notificationMetadata: pulumi.Input.fromValue(map['notificationMetadata'] as String),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
    );
  }
}

