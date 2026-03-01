// ignore_for_file: unused_element, unnecessary_cast


class GetIpaDomainsDomainSource {
  /// The address of the origin server.
  final String content;
  /// The custom port.
  final int port;
  /// The priority of the origin server if multiple origin servers are specified.
  final String priority;
  /// The type of the origin server.
  final String type;
  /// The weight of the origin server if multiple origin servers are specified.
  final int weight;

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
      content: map['content'] as String,
      port: map['port'] as int,
      priority: map['priority'] as String,
      type: map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}

