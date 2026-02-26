// ignore_for_file: unused_element, unnecessary_cast

class DomainNameServer {
  /// Glue IP addresses of a name server. The list can contain only one IPv4 and one IPv6 address.
  final List<String> glueIps;

  /// The fully qualified host name of the name server.
  final String name;

  DomainNameServer({
    required this.glueIps,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['glueIps'] = glueIps;
    map['name'] = name;
    return map;
  }

  factory DomainNameServer.fromMap(Map<String, dynamic> map) {
    return DomainNameServer(
      glueIps: (map['glueIps'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}
