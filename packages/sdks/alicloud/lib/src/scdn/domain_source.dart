// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSource {
  /// The Back-to-Source Address.
  final pulumi.Input<String> content;
  /// The source status. Valid values: online, offline.
  final pulumi.Input<String>? enabled;
  /// Port.
  final pulumi.Input<int> port;
  /// Priority.
  final pulumi.Input<String> priority;
  /// The Origin Server Type. Valid Values:
  /// * ipaddr: IP Source Station
  /// * domain: the Domain Name
  /// * oss: OSS Bucket as a Source Station.
  final pulumi.Input<String> type;

  /// Creates a new [DomainSource].
  /// [content] The Back-to-Source Address.
  /// [enabled] The source status. Valid values: online, offline.
  /// [port] Port.
  /// [priority] Priority.
  /// [type] The Origin Server Type. Valid Values:
  const DomainSource({
    required this.content,
    this.enabled,
    required this.port,
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'enabled': ?enabled,
      'port': port,
      'priority': priority,
      'type': type,
    };
  }

  factory DomainSource.fromMap(Map<String, dynamic> map) {
    return DomainSource(
      content: pulumi.Input.fromValue(map['content'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

