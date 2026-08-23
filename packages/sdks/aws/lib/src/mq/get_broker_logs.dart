// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerLogs {
  /// Whether audit logging is enabled.
  final pulumi.Input<bool> audit;
  /// Whether general logging is enabled.
  final pulumi.Input<bool> general;

  /// Creates a new [GetBrokerLogs].
  /// [audit] Whether audit logging is enabled.
  /// [general] Whether general logging is enabled.
  const GetBrokerLogs({
    required this.audit,
    required this.general,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audit': audit,
      'general': general,
    };
  }

  factory GetBrokerLogs.fromMap(Map<String, dynamic> map) {
    return GetBrokerLogs(
      audit: pulumi.Input.fromValue(map['audit'] as bool),
      general: pulumi.Input.fromValue(map['general'] as bool),
    );
  }
}
