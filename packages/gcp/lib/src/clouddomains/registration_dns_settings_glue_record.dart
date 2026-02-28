// ignore_for_file: unused_element, unnecessary_cast


class RegistrationDnsSettingsGlueRecord {
  /// Required. Domain name of the host in Punycode format.
  final String hostName;
  /// List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  /// At least one of ipv4_address and ipv6_address must be set.
  final List<String>? ipv4Addresses;
  /// List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  /// At least one of ipv4_address and ipv6_address must be set.
  final List<String>? ipv6Addresses;

  /// Creates a new [RegistrationDnsSettingsGlueRecord].
  /// [hostName] Required. Domain name of the host in Punycode format.
  /// [ipv4Addresses] List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  /// [ipv6Addresses] List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  RegistrationDnsSettingsGlueRecord({
    required this.hostName,
    this.ipv4Addresses,
    this.ipv6Addresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'ipv4Addresses': ?ipv4Addresses,
      'ipv6Addresses': ?ipv6Addresses,
    };
  }

  factory RegistrationDnsSettingsGlueRecord.fromMap(Map<String, dynamic> map) {
    return RegistrationDnsSettingsGlueRecord(
      hostName: map['hostName'] as String,
      ipv4Addresses: map['ipv4Addresses'] == null ? null : (map['ipv4Addresses'] as List).cast<String>(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : (map['ipv6Addresses'] as List).cast<String>(),
    );
  }
}

