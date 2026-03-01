// ignore_for_file: unused_element, unnecessary_cast


class GetPublicIPsPublicIp {
  /// The Domain Name Label of the Public IP Address
  final String domainNameLabel;
  /// The FQDN of the Public IP Address
  final String fqdn;
  /// The ID of the Public IP Address
  final String id;
  /// The IP address of the Public IP Address
  final String ipAddress;
  /// The Name of the Public IP Address
  final String name;

  /// Creates a new [GetPublicIPsPublicIp].
  /// [domainNameLabel] The Domain Name Label of the Public IP Address
  /// [fqdn] The FQDN of the Public IP Address
  /// [id] The ID of the Public IP Address
  /// [ipAddress] The IP address of the Public IP Address
  /// [name] The Name of the Public IP Address
  GetPublicIPsPublicIp({
    required this.domainNameLabel,
    required this.fqdn,
    required this.id,
    required this.ipAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': domainNameLabel,
      'fqdn': fqdn,
      'id': id,
      'ipAddress': ipAddress,
      'name': name,
    };
  }

  factory GetPublicIPsPublicIp.fromMap(Map<String, dynamic> map) {
    return GetPublicIPsPublicIp(
      domainNameLabel: map['domainNameLabel'] as String,
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      name: map['name'] as String,
    );
  }
}

