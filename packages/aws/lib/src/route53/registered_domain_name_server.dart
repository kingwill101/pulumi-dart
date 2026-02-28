// ignore_for_file: unused_element, unnecessary_cast


class RegisteredDomainNameServer {
  /// Glue IP addresses of a name server. The list can contain only one IPv4 and one IPv6 address.
  final List<String>? glueIps;
  /// The fully qualified host name of the name server.
  final String name;

  /// Creates a new [RegisteredDomainNameServer].
  /// [glueIps] Glue IP addresses of a name server. The list can contain only one IPv4 and one IPv6 address.
  /// [name] The fully qualified host name of the name server.
  RegisteredDomainNameServer({
    this.glueIps,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glueIps': ?glueIps,
      'name': name,
    };
  }

  factory RegisteredDomainNameServer.fromMap(Map<String, dynamic> map) {
    return RegisteredDomainNameServer(
      glueIps: map['glueIps'] == null ? null : (map['glueIps'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

