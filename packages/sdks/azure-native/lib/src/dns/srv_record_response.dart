// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An SRV record.
class SrvRecordResponse {
  /// The port value for this SRV record.
  final pulumi.Input<int>? port;
  /// The priority value for this SRV record.
  final pulumi.Input<int>? priority;
  /// The target domain name for this SRV record.
  final pulumi.Input<String>? target;
  /// The weight value for this SRV record.
  final pulumi.Input<int>? weight;

  /// Creates a new [SrvRecordResponse].
  /// [port] The port value for this SRV record.
  /// [priority] The priority value for this SRV record.
  /// [target] The target domain name for this SRV record.
  /// [weight] The weight value for this SRV record.
  SrvRecordResponse({
    this.port,
    this.priority,
    this.target,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'priority': ?priority,
      'target': ?target,
      'weight': ?weight,
    };
  }

  factory SrvRecordResponse.fromMap(Map<String, dynamic> map) {
    return SrvRecordResponse(
      port: map['port'] == null ? null : (map['port']! as int).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

