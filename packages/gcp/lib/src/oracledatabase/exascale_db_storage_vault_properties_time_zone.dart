// ignore_for_file: unused_element, unnecessary_cast

class ExascaleDbStorageVaultPropertiesTimeZone {
  /// IANA Time Zone Database time zone. For example "America/New_York".
  final String? id;

  /// IANA Time Zone Database version number. For example "2019a".
  final String? version;

  /// Creates a new [ExascaleDbStorageVaultPropertiesTimeZone].
  /// [id] IANA Time Zone Database time zone. For example "America/New_York".
  /// [version] IANA Time Zone Database version number. For example "2019a".
  ExascaleDbStorageVaultPropertiesTimeZone({
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ExascaleDbStorageVaultPropertiesTimeZone.fromMap(
      Map<String, dynamic> map) {
    return ExascaleDbStorageVaultPropertiesTimeZone(
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
