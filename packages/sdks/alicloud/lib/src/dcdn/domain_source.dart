// ignore_for_file: unused_element, unnecessary_cast


class DomainSource {
  /// The address of the source station.
  final String? content;
  /// The port number. Valid values: `443` and `80`. Default to `80`.
  final int? port;
  /// The priority of the origin if multiple origins are specified. Default to `20`.
  final String? priority;
  /// The type of the origin. Valid values:
  final String? type;
  /// The weight of the origin if multiple origins are specified. Default to `10`.
  final String? weight;

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
      content: map['content'] == null ? null : map['content'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      priority: map['priority'] == null ? null : map['priority'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      weight: map['weight'] == null ? null : map['weight'] as String,
    );
  }
}

