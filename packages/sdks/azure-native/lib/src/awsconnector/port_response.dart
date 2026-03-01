// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Port
class PortResponse {
  /// Access Direction for Protocol of the Instance(inbound/outbound).
  final String? accessDirection;
  /// Access From Protocol of the Instance.
  final String? accessFrom;
  /// Access Type Protocol of the Instance.
  final String? accessType;
  /// cidr List Aliases
  final List<String>? cidrListAliases;
  /// Property cidrs
  final List<String>? cidrs;
  /// CommonName for Protocol of the Instance.
  final String? commonName;
  /// From Port of the Instance.
  final int? fromPort;
  /// IPv6 Cidrs
  final List<String>? ipv6Cidrs;
  /// Port Protocol of the Instance.
  final String? protocol;
  /// To Port of the Instance.
  final int? toPort;

  /// Creates a new [PortResponse].
  /// [accessDirection] Access Direction for Protocol of the Instance(inbound/outbound).
  /// [accessFrom] Access From Protocol of the Instance.
  /// [accessType] Access Type Protocol of the Instance.
  /// [cidrListAliases] cidr List Aliases
  /// [cidrs] Property cidrs
  /// [commonName] CommonName for Protocol of the Instance.
  /// [fromPort] From Port of the Instance.
  /// [ipv6Cidrs] IPv6 Cidrs
  /// [protocol] Port Protocol of the Instance.
  /// [toPort] To Port of the Instance.
  PortResponse({
    this.accessDirection,
    this.accessFrom,
    this.accessType,
    this.cidrListAliases,
    this.cidrs,
    this.commonName,
    this.fromPort,
    this.ipv6Cidrs,
    this.protocol,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessDirection': ?accessDirection,
      'accessFrom': ?accessFrom,
      'accessType': ?accessType,
      'cidrListAliases': ?cidrListAliases,
      'cidrs': ?cidrs,
      'commonName': ?commonName,
      'fromPort': ?fromPort,
      'ipv6Cidrs': ?ipv6Cidrs,
      'protocol': ?protocol,
      'toPort': ?toPort,
    };
  }

  factory PortResponse.fromMap(Map<String, dynamic> map) {
    return PortResponse(
      accessDirection: map['accessDirection'] == null ? null : map['accessDirection'] as String,
      accessFrom: map['accessFrom'] == null ? null : map['accessFrom'] as String,
      accessType: map['accessType'] == null ? null : map['accessType'] as String,
      cidrListAliases: map['cidrListAliases'] == null ? null : (map['cidrListAliases'] as List).cast<String>(),
      cidrs: map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      commonName: map['commonName'] == null ? null : map['commonName'] as String,
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      ipv6Cidrs: map['ipv6Cidrs'] == null ? null : (map['ipv6Cidrs'] as List).cast<String>(),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}

