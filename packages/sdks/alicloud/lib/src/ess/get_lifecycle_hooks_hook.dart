// ignore_for_file: unused_element, unnecessary_cast


class GetLifecycleHooksHook {
  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses.
  final String defaultResult;
  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the default_result parameter.
  final int heartbeatTimeout;
  /// ID of the lifecycle hook.
  final String id;
  /// Type of Scaling activity attached to lifecycle hook.
  final String lifecycleTransition;
  /// Name of the lifecycle hook.
  final String name;
  /// The Arn of notification target.
  final String notificationArn;
  /// Additional information that you want to include when Auto Scaling sends a message to the notification target.
  final String notificationMetadata;
  /// Scaling group id the lifecycle hooks belong to.
  final String scalingGroupId;

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
      defaultResult: map['defaultResult'] as String,
      heartbeatTimeout: map['heartbeatTimeout'] as int,
      id: map['id'] as String,
      lifecycleTransition: map['lifecycleTransition'] as String,
      name: map['name'] as String,
      notificationArn: map['notificationArn'] as String,
      notificationMetadata: map['notificationMetadata'] as String,
      scalingGroupId: map['scalingGroupId'] as String,
    );
  }
}

