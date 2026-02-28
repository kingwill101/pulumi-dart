// ignore_for_file: unused_element, unnecessary_cast

class LocationSmbMountOptions {
  /// The specific SMB version that you want DataSync to use for mounting your SMB share. Valid values: `AUTOMATIC`, `SMB2`, and `SMB3`. Default: `AUTOMATIC`
  final String? version;

  /// Creates a new [LocationSmbMountOptions].
  /// [version] The specific SMB version that you want DataSync to use for mounting your SMB share. Valid values: `AUTOMATIC`, `SMB2`, and `SMB3`. Default: `AUTOMATIC`
  LocationSmbMountOptions({
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory LocationSmbMountOptions.fromMap(Map<String, dynamic> map) {
    return LocationSmbMountOptions(
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
