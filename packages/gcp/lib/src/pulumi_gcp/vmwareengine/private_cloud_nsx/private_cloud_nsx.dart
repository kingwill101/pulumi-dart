// ignore_for_file: unused_element, unnecessary_cast

class PrivateCloudNsx {
  /// Fully qualified domain name of the appliance.
  final String? fqdn;

  /// Internal IP address of the appliance.
  final String? internalIp;

  /// State of the appliance.
  /// Possible values are: `ACTIVE`, `CREATING`.
  final String? state;

  /// Version of the appliance.
  final String? version;

  PrivateCloudNsx({
    this.fqdn,
    this.internalIp,
    this.state,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fqdnValue = fqdn;
    if (fqdnValue != null) {
      map['fqdn'] = fqdnValue;
    }
    final internalIpValue = internalIp;
    if (internalIpValue != null) {
      map['internalIp'] = internalIpValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory PrivateCloudNsx.fromMap(Map<String, dynamic> map) {
    return PrivateCloudNsx(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      internalIp:
          map['internalIp'] == null ? null : map['internalIp'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
