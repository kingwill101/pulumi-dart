// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionInvocationRestriction {
  /// Whether invocation is disabled.
  final pulumi.Input<bool> disable;
  /// Last time the function was Updated
  final pulumi.Input<String> lastModifiedTime;
  /// Disable Reason.
  final pulumi.Input<String> reason;

  /// Creates a new [GetV3FunctionsFunctionInvocationRestriction].
  /// [disable] Whether invocation is disabled.
  /// [lastModifiedTime] Last time the function was Updated
  /// [reason] Disable Reason.
  GetV3FunctionsFunctionInvocationRestriction({
    required this.disable,
    required this.lastModifiedTime,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': disable,
      'lastModifiedTime': lastModifiedTime,
      'reason': reason,
    };
  }

  factory GetV3FunctionsFunctionInvocationRestriction.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionInvocationRestriction(
      disable: (map['disable'] as bool).input(),
      lastModifiedTime: (map['lastModifiedTime'] as String).input(),
      reason: (map['reason'] as String).input(),
    );
  }
}

