// ignore_for_file: unused_element, unnecessary_cast

class GetPrivateCloudVcenter {
  /// Fully qualified domain name of the appliance.
  final String fqdn;

  /// Internal IP address of the appliance.
  final String internalIp;

  /// State of the appliance. Possible values: ["ACTIVE", "CREATING"]
  final String state;

  /// Version of the appliance.
  final String version;

  GetPrivateCloudVcenter({
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

  factory GetPrivateCloudVcenter.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudVcenter(
      fqdn: map['fqdn'] as String,
      internalIp: map['internalIp'] as String,
      state: map['state'] as String,
      version: map['version'] as String,
    );
  }
}
