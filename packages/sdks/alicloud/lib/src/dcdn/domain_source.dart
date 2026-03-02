// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSource {
  /// The address of the source station.
  final pulumi.Input<String>? content;
  /// The port number. Valid values: `443` and `80`. Default to `80`.
  final pulumi.Input<int>? port;
  /// The priority of the origin if multiple origins are specified. Default to `20`.
  final pulumi.Input<String>? priority;
  /// The type of the origin. Valid values:
  final pulumi.Input<String>? type;
  /// The weight of the origin if multiple origins are specified. Default to `10`.
  final pulumi.Input<String>? weight;

  /// Creates a new [DomainSource].
  /// [content] The address of the source station.
  /// [port] The port number. Valid values: `443` and `80`. Default to `80`.
  /// [priority] The priority of the origin if multiple origins are specified. Default to `20`.
  /// [type] The type of the origin. Valid values:
  /// [weight] The weight of the origin if multiple origins are specified. Default to `10`.
  DomainSource({
    this.content,
    this.port,
    this.priority,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'port': ?port,
      'priority': ?priority,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory DomainSource.fromMap(Map<String, dynamic> map) {
    return DomainSource(
      content: map['content'] == null ? null : (map['content'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      priority: map['priority'] == null ? null : (map['priority'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as String).input(),
    );
  }
}

