// ignore_for_file: unused_element, unnecessary_cast

/// Details about a vCenter Server management appliance.
class VcenterResponse {
  /// Fully qualified domain name of the appliance.
  final String fqdn;

  /// Internal IP address of the appliance.
  final String internalIp;

  /// The state of the appliance.
  final String state;

  /// Version of the appliance.
  final String version;

  /// Creates a new [VcenterResponse].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] The state of the appliance.
  /// [version] Version of the appliance.
  VcenterResponse({
    required this.fqdn,
    required this.internalIp,
    required this.state,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fqdn'] = fqdn;
    map['internalIp'] = internalIp;
    map['state'] = state;
    map['version'] = version;
    return map;
  }

  factory VcenterResponse.fromMap(Map<String, dynamic> map) {
    return VcenterResponse(
      fqdn: map['fqdn'] as String,
      internalIp: map['internalIp'] as String,
      state: map['state'] as String,
      version: map['version'] as String,
    );
  }
}
