// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomainSource {
  /// The origin address.
  final String content;
  /// The status of the origin.
  final String enabled;
  /// The port number.
  final int port;
  /// The priority of the origin if multiple origins are specified.
  final String priority;
  /// The type of the origin. Valid values:
  final String type;
  /// The weight of the origin if multiple origins are specified.
  final String weight;

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
      content: map['content'] as String,
      enabled: map['enabled'] as String,
      port: map['port'] as int,
      priority: map['priority'] as String,
      type: map['type'] as String,
      weight: map['weight'] as String,
    );
  }
}

