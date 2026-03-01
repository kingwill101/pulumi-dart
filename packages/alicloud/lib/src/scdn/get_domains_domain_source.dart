// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomainSource {
  /// The Back-to-Source Address.
  final String content;
  /// State.
  final String enabled;
  /// Port.
  final int port;
  /// Priority.
  final String priority;
  /// the Origin Server Type. Valid Values: Ipaddr: IP Source Station Domain: the Domain Name, See Extra Domain Quota OSS: OSS Bucket as a Source Station.
  final String type;

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
      content: map['content'] as String,
      enabled: map['enabled'] as String,
      port: map['port'] as int,
      priority: map['priority'] as String,
      type: map['type'] as String,
    );
  }
}

