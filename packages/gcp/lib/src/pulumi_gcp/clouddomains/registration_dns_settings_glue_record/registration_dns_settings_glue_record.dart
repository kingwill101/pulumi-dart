// ignore_for_file: unused_element, unnecessary_cast

class RegistrationDnsSettingsGlueRecord {
  /// Required. Domain name of the host in Punycode format.
  final String hostName;

  /// List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  /// At least one of<span pulumi-lang-nodejs=" ipv4Address " pulumi-lang-dotnet=" Ipv4Address " pulumi-lang-go=" ipv4Address " pulumi-lang-python=" ipv4_address " pulumi-lang-yaml=" ipv4Address " pulumi-lang-java=" ipv4Address "> ipv4_address </span>and<span pulumi-lang-nodejs=" ipv6Address " pulumi-lang-dotnet=" Ipv6Address " pulumi-lang-go=" ipv6Address " pulumi-lang-python=" ipv6_address " pulumi-lang-yaml=" ipv6Address " pulumi-lang-java=" ipv6Address "> ipv6_address </span>must be set.
  final List<String>? ipv4Addresses;

  /// List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
  /// At least one of<span pulumi-lang-nodejs=" ipv4Address " pulumi-lang-dotnet=" Ipv4Address " pulumi-lang-go=" ipv4Address " pulumi-lang-python=" ipv4_address " pulumi-lang-yaml=" ipv4Address " pulumi-lang-java=" ipv4Address "> ipv4_address </span>and<span pulumi-lang-nodejs=" ipv6Address " pulumi-lang-dotnet=" Ipv6Address " pulumi-lang-go=" ipv6Address " pulumi-lang-python=" ipv6_address " pulumi-lang-yaml=" ipv6Address " pulumi-lang-java=" ipv6Address "> ipv6_address </span>must be set.
  final List<String>? ipv6Addresses;

  RegistrationDnsSettingsGlueRecord({
    required this.hostName,
    this.ipv4Addresses,
    this.ipv6Addresses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostName'] = hostName;
    final ipv4AddressesValue = ipv4Addresses;
    if (ipv4AddressesValue != null) {
      map['ipv4Addresses'] = ipv4AddressesValue;
    }
    final ipv6AddressesValue = ipv6Addresses;
    if (ipv6AddressesValue != null) {
      map['ipv6Addresses'] = ipv6AddressesValue;
    }
    return map;
  }

  factory RegistrationDnsSettingsGlueRecord.fromMap(Map<String, dynamic> map) {
    return RegistrationDnsSettingsGlueRecord(
      hostName: map['hostName'] as String,
      ipv4Addresses: map['ipv4Addresses'] == null
          ? null
          : (map['ipv4Addresses'] as List).cast<String>(),
      ipv6Addresses: map['ipv6Addresses'] == null
          ? null
          : (map['ipv6Addresses'] as List).cast<String>(),
    );
  }
}
