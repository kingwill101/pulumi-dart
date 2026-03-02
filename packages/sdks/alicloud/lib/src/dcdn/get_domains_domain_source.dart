// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomainSource {
  /// The origin address.
  final pulumi.Input<String> content;
  /// The status of the origin.
  final pulumi.Input<String> enabled;
  /// The port number.
  final pulumi.Input<int> port;
  /// The priority of the origin if multiple origins are specified.
  final pulumi.Input<String> priority;
  /// The type of the origin. Valid values:
  final pulumi.Input<String> type;
  /// The weight of the origin if multiple origins are specified.
  final pulumi.Input<String> weight;

  /// Creates a new [GetDomainsDomainSource].
  /// [content] The origin address.
  /// [enabled] The status of the origin.
  /// [port] The port number.
  /// [priority] The priority of the origin if multiple origins are specified.
  /// [type] The type of the origin. Valid values:
  /// [weight] The weight of the origin if multiple origins are specified.
  GetDomainsDomainSource({
    required this.content,
    required this.enabled,
    required this.port,
    required this.priority,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'enabled': enabled,
      'port': port,
      'priority': priority,
      'type': type,
      'weight': weight,
    };
  }

  factory GetDomainsDomainSource.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainSource(
      content: (map['content'] as String).input(),
      enabled: (map['enabled'] as String).input(),
      port: (map['port'] as int).input(),
      priority: (map['priority'] as String).input(),
      type: (map['type'] as String).input(),
      weight: (map['weight'] as String).input(),
    );
  }
}

