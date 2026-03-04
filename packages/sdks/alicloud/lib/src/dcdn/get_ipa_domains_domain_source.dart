// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpaDomainsDomainSource {
  /// The address of the origin server.
  final pulumi.Input<String> content;

  /// The custom port.
  final pulumi.Input<int> port;

  /// The priority of the origin server if multiple origin servers are specified.
  final pulumi.Input<String> priority;

  /// The type of the origin server.
  final pulumi.Input<String> type;

  /// The weight of the origin server if multiple origin servers are specified.
  final pulumi.Input<int> weight;

  /// Creates a new [GetIpaDomainsDomainSource].
  /// [content] The address of the origin server.
  /// [port] The custom port.
  /// [priority] The priority of the origin server if multiple origin servers are specified.
  /// [type] The type of the origin server.
  /// [weight] The weight of the origin server if multiple origin servers are specified.
  GetIpaDomainsDomainSource({
    required this.content,
    required this.port,
    required this.priority,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'port': port,
      'priority': priority,
      'type': type,
      'weight': weight,
    };
  }

  factory GetIpaDomainsDomainSource.fromMap(Map<String, dynamic> map) {
    return GetIpaDomainsDomainSource(
      content: pulumi.Input.fromValue(map['content'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
