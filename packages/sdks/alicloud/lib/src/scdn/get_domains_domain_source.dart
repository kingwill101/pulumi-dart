// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomainSource {
  /// The Back-to-Source Address.
  final pulumi.Input<String> content;

  /// State.
  final pulumi.Input<String> enabled;

  /// Port.
  final pulumi.Input<int> port;

  /// Priority.
  final pulumi.Input<String> priority;

  /// the Origin Server Type. Valid Values: Ipaddr: IP Source Station Domain: the Domain Name, See Extra Domain Quota OSS: OSS Bucket as a Source Station.
  final pulumi.Input<String> type;

  /// Creates a new [GetDomainsDomainSource].
  /// [content] The Back-to-Source Address.
  /// [enabled] State.
  /// [port] Port.
  /// [priority] Priority.
  /// [type] the Origin Server Type. Valid Values: Ipaddr: IP Source Station Domain: the Domain Name, See Extra Domain Quota OSS: OSS Bucket as a Source Station.
  GetDomainsDomainSource({
    required this.content,
    required this.enabled,
    required this.port,
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'enabled': enabled,
      'port': port,
      'priority': priority,
      'type': type,
    };
  }

  factory GetDomainsDomainSource.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainSource(
      content: pulumi.Input.fromValue(map['content'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
