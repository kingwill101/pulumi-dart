// ignore_for_file: unused_element, unnecessary_cast

class GetPrivateCloudHcx {
  /// Fully qualified domain name of the appliance.
  final String fqdn;

  /// Internal IP address of the appliance.
  final String internalIp;

  /// State of the appliance. Possible values: ["ACTIVE", "CREATING"]
  final String state;

  /// Version of the appliance.
  final String version;

  /// Creates a new [GetPrivateCloudHcx].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] State of the appliance. Possible values: ["ACTIVE", "CREATING"]
  /// [version] Version of the appliance.
  GetPrivateCloudHcx({
    required this.fqdn,
    required this.internalIp,
    required this.state,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'internalIp': internalIp,
      'state': state,
      'version': version,
    };
  }

  factory GetPrivateCloudHcx.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudHcx(
      fqdn: map['fqdn'] as String,
      internalIp: map['internalIp'] as String,
      state: map['state'] as String,
      version: map['version'] as String,
    );
  }
}
