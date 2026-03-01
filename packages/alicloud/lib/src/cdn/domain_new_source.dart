// ignore_for_file: unused_element, unnecessary_cast


class DomainNewSource {
  /// The address of source. Valid values can be ip or doaminName. Each item's `content` can not be repeated.
  final String? content;
  /// The port of source. Valid values are `443` and `80`. Default value is `80`.
  final int? port;
  /// Priority of the source. Valid values are `0` and `100`. Default value is `20`.
  final int? priority;
  /// The type of the source. Valid values are `ipaddr`, `domain` and `oss`.
  final String? type;
  /// Weight of the source. Valid values are from `0` to `100`. Default value is `10`, but if type is `ipaddr`, the value can only be `10`.
  final int? weight;

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
      content: map['content'] == null ? null : map['content'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      priority: map['priority'] == null ? null : map['priority'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

