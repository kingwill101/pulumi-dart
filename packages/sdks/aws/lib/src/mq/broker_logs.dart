// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerLogs {
  /// Whether to enable audit logging. Only possible for `engine_type` of `ActiveMQ`. Logs user management actions via JMX or ActiveMQ Web Console. Defaults to `false`.
  final pulumi.Input<bool>? audit;
  /// Whether to enable general logging via CloudWatch. Defaults to `false`.
  final pulumi.Input<bool>? general;

  /// Creates a new [BrokerLogs].
  /// [audit] Whether to enable audit logging. Only possible for `engine_type` of `ActiveMQ`. Logs user management actions via JMX or ActiveMQ Web Console. Defaults to `false`.
  /// [general] Whether to enable general logging via CloudWatch. Defaults to `false`.
  BrokerLogs({
    this.audit,
    this.general,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audit': ?audit,
      'general': ?general,
    };
  }

  factory BrokerLogs.fromMap(Map<String, dynamic> map) {
    return BrokerLogs(
      audit: map['audit'] == null ? null : ((map['audit'] as bool).input()).input(),
      general: map['general'] == null ? null : ((map['general'] as bool).input()).input(),
    );
  }
}

