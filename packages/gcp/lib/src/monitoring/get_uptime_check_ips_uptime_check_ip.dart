// ignore_for_file: unused_element, unnecessary_cast

class GetUptimeCheckIPsUptimeCheckIp {
  /// The IP address from which the Uptime check originates. This is a fully specified IP address
  /// (not an IP address range). Most IP addresses, as of this publication, are in IPv4 format; however, one should not
  /// rely on the IP addresses being in IPv4 format indefinitely, and should support interpreting this field in either
  /// IPv4 or IPv6 format.
  final String ipAddress;

  /// A more specific location within the region that typically encodes a particular city/town/metro
  /// (and its containing state/province or country) within the broader umbrella region category.
  final String location;

  /// A broad region category in which the IP address is located.
  final String region;

  /// Creates a new [GetUptimeCheckIPsUptimeCheckIp].
  /// [ipAddress] The IP address from which the Uptime check originates. This is a fully specified IP address
  /// [location] A more specific location within the region that typically encodes a particular city/town/metro
  /// [region] A broad region category in which the IP address is located.
  GetUptimeCheckIPsUptimeCheckIp({
    required this.ipAddress,
    required this.location,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['location'] = location;
    map['region'] = region;
    return map;
  }

  factory GetUptimeCheckIPsUptimeCheckIp.fromMap(Map<String, dynamic> map) {
    return GetUptimeCheckIPsUptimeCheckIp(
      ipAddress: map['ipAddress'] as String,
      location: map['location'] as String,
      region: map['region'] as String,
    );
  }
}
