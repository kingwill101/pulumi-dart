// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNameServer {
  /// Glue IP addresses of a name server. The list can contain only one IPv4 and one IPv6 address.
  final pulumi.Input<List<String>> glueIps;
  /// The fully qualified host name of the name server.
  final pulumi.Input<String> name;

  /// Creates a new [DomainNameServer].
  /// [glueIps] Glue IP addresses of a name server. The list can contain only one IPv4 and one IPv6 address.
  /// [name] The fully qualified host name of the name server.
  const DomainNameServer({
    required this.glueIps,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glueIps': glueIps,
      'name': name,
    };
  }

  factory DomainNameServer.fromMap(Map<String, dynamic> map) {
    return DomainNameServer(
      glueIps: pulumi.Input.fromValue((map['glueIps'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

