// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNewSource {
  /// The address of source. Valid values can be ip or doaminName. Each item's `content` can not be repeated.
  final pulumi.Input<String>? content;
  /// The port of source. Valid values are `443` and `80`. Default value is `80`.
  final pulumi.Input<int>? port;
  /// Priority of the source. Valid values are `0` and `100`. Default value is `20`.
  final pulumi.Input<int>? priority;
  /// The type of the source. Valid values are `ipaddr`, `domain` and `oss`.
  final pulumi.Input<String>? type;
  /// Weight of the source. Valid values are from `0` to `100`. Default value is `10`, but if type is `ipaddr`, the value can only be `10`.
  final pulumi.Input<int>? weight;

  /// Creates a new [DomainNewSource].
  /// [content] The address of source. Valid values can be ip or doaminName. Each item's `content` can not be repeated.
  /// [port] The port of source. Valid values are `443` and `80`. Default value is `80`.
  /// [priority] Priority of the source. Valid values are `0` and `100`. Default value is `20`.
  /// [type] The type of the source. Valid values are `ipaddr`, `domain` and `oss`.
  /// [weight] Weight of the source. Valid values are from `0` to `100`. Default value is `10`, but if type is `ipaddr`, the value can only be `10`.
  DomainNewSource({
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

  factory DomainNewSource.fromMap(Map<String, dynamic> map) {
    return DomainNewSource(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

