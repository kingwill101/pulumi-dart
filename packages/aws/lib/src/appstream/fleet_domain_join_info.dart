// ignore_for_file: unused_element, unnecessary_cast


class FleetDomainJoinInfo {
  /// Fully qualified name of the directory (for example, corp.example.com).
  final String? directoryName;
  /// Distinguished name of the organizational unit for computer accounts.
  final String? organizationalUnitDistinguishedName;

  /// Creates a new [FleetDomainJoinInfo].
  /// [directoryName] Fully qualified name of the directory (for example, corp.example.com).
  /// [organizationalUnitDistinguishedName] Distinguished name of the organizational unit for computer accounts.
  FleetDomainJoinInfo({
    this.directoryName,
    this.organizationalUnitDistinguishedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryName': ?directoryName,
      'organizationalUnitDistinguishedName': ?organizationalUnitDistinguishedName,
    };
  }

  factory FleetDomainJoinInfo.fromMap(Map<String, dynamic> map) {
    return FleetDomainJoinInfo(
      directoryName: map['directoryName'] == null ? null : map['directoryName'] as String,
      organizationalUnitDistinguishedName: map['organizationalUnitDistinguishedName'] == null ? null : map['organizationalUnitDistinguishedName'] as String,
    );
  }
}

