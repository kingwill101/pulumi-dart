// ignore_for_file: unused_element, unnecessary_cast

class ImageBuilderDomainJoinInfo {
  /// Fully qualified name of the directory (for example, corp.example.com).
  final String? directoryName;

  /// Distinguished name of the organizational unit for computer accounts.
  final String? organizationalUnitDistinguishedName;

  /// Creates a new [ImageBuilderDomainJoinInfo].
  /// [directoryName] Fully qualified name of the directory (for example, corp.example.com).
  /// [organizationalUnitDistinguishedName] Distinguished name of the organizational unit for computer accounts.
  ImageBuilderDomainJoinInfo({
    this.directoryName,
    this.organizationalUnitDistinguishedName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final directoryNameValue = directoryName;
    if (directoryNameValue != null) {
      map['directoryName'] = directoryNameValue;
    }
    final organizationalUnitDistinguishedNameValue =
        organizationalUnitDistinguishedName;
    if (organizationalUnitDistinguishedNameValue != null) {
      map['organizationalUnitDistinguishedName'] =
          organizationalUnitDistinguishedNameValue;
    }
    return map;
  }

  factory ImageBuilderDomainJoinInfo.fromMap(Map<String, dynamic> map) {
    return ImageBuilderDomainJoinInfo(
      directoryName:
          map['directoryName'] == null ? null : map['directoryName'] as String,
      organizationalUnitDistinguishedName:
          map['organizationalUnitDistinguishedName'] == null
              ? null
              : map['organizationalUnitDistinguishedName'] as String,
    );
  }
}
