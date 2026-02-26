// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange {
  /// A description of this ip range.
  final String? description;

  /// IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. IP range prefixes should be properly truncated. For example, 1.2.3.4/24 should be truncated to 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 should be truncated to 2001:db8::/32.
  final String value;

  EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange({
    this.description,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['value'] = value;
    return map;
  }

  factory EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange(
      description:
          map['description'] == null ? null : map['description'] as String,
      value: map['value'] as String,
    );
  }
}
