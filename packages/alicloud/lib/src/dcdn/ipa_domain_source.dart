// ignore_for_file: unused_element, unnecessary_cast


class IpaDomainSource {
  /// The address of the origin server. You can specify an IP address or a domain name.
  final String content;
  /// The custom port number. Valid values: `0` to `65535`.
  final int port;
  /// The priority of the origin server. Valid values: `20` and `30`. Default value: `20`. A value of 20 specifies that the origin is a primary origin. A value of 30 specifies that the origin is a secondary origin.
  final String priority;
  /// The type of the origin server. Valid values: `ipaddr`, `domain`, `oss`.
  final String type;
  /// The weight of the origin server. You must specify a value that is less than `100`. Default value: `10`.
  final int weight;

  /// Creates a new [IpaDomainSource].
  /// [content] The address of the origin server. You can specify an IP address or a domain name.
  /// [port] The custom port number. Valid values: `0` to `65535`.
  /// [priority] The priority of the origin server. Valid values: `20` and `30`. Default value: `20`. A value of 20 specifies that the origin is a primary origin. A value of 30 specifies that the origin is a secondary origin.
  /// [type] The type of the origin server. Valid values: `ipaddr`, `domain`, `oss`.
  /// [weight] The weight of the origin server. You must specify a value that is less than `100`. Default value: `10`.
  IpaDomainSource({
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

  factory IpaDomainSource.fromMap(Map<String, dynamic> map) {
    return IpaDomainSource(
      content: map['content'] as String,
      port: map['port'] as int,
      priority: map['priority'] as String,
      type: map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}

