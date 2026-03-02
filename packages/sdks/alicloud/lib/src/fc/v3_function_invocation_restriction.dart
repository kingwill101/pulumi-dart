// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionInvocationRestriction {
  /// Whether invocation is disabled
  final pulumi.Input<bool>? disable;
  /// Last time the function was Updated
  final pulumi.Input<String>? lastModifiedTime;
  /// Disable Reason
  final pulumi.Input<String>? reason;

  /// Creates a new [V3FunctionInvocationRestriction].
  /// [disable] Whether invocation is disabled
  /// [lastModifiedTime] Last time the function was Updated
  /// [reason] Disable Reason
  V3FunctionInvocationRestriction({
    this.disable,
    this.lastModifiedTime,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': ?disable,
      'lastModifiedTime': ?lastModifiedTime,
      'reason': ?reason,
    };
  }

  factory V3FunctionInvocationRestriction.fromMap(Map<String, dynamic> map) {
    return V3FunctionInvocationRestriction(
      disable: map['disable'] == null ? null : (map['disable'] as bool).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
    );
  }
}

