// ignore_for_file: unused_element, unnecessary_cast

class PrivateCloudHcx {
  /// Fully qualified domain name of the appliance.
  final String? fqdn;

  /// Internal IP address of the appliance.
  final String? internalIp;

  /// State of the appliance.
  /// Possible values are: `ACTIVE`, `CREATING`.
  final String? state;

  /// Version of the appliance.
  final String? version;

  /// Creates a new [PrivateCloudHcx].
  /// [fqdn] Fully qualified domain name of the appliance.
  /// [internalIp] Internal IP address of the appliance.
  /// [state] State of the appliance.
  /// [version] Version of the appliance.
  PrivateCloudHcx({this.fqdn, this.internalIp, this.state, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'internalIp': ?internalIp,
      'state': ?state,
      'version': ?version,
    };
  }

  factory PrivateCloudHcx.fromMap(Map<String, dynamic> map) {
    return PrivateCloudHcx(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      internalIp: map['internalIp'] == null
          ? null
          : map['internalIp'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
