// ignore_for_file: unused_element, unnecessary_cast

class GetPrivateCloudNsx {
  /// Fully qualified domain name of the appliance.
  final String fqdn;

  /// Internal IP address of the appliance.
  final String internalIp;

  /// State of the appliance. Possible values: ["ACTIVE", "CREATING"]
  final String state;

  /// Version of the appliance.
  final String version;

  /// Creates a new [GetPrivateCloudNsx].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] State of the appliance. Possible values: ["ACTIVE", "CREATING"]
  /// [version] Version of the appliance.
  GetPrivateCloudNsx({
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

  factory GetPrivateCloudNsx.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudNsx(
      fqdn: map['fqdn'] as String,
      internalIp: map['internalIp'] as String,
      state: map['state'] as String,
      version: map['version'] as String,
    );
  }
}
