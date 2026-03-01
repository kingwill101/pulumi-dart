// ignore_for_file: unused_element, unnecessary_cast


class ApplicationNasConfig {
  /// The domain name of the mount target.
  final String? mountDomain;
  /// The mount path of the container.
  final String? mountPath;
  /// The ID of the NAS file system.
  final String? nasId;
  /// The directory in the NAS file system.
  final String? nasPath;
  /// Specifies whether the application can read data from or write data to resources in the directory of the NAS. Valid values: `true` and `false`. If you set `read_only` to `false`, the application has the read and write permissions.
  final bool? readOnly;

  /// Creates a new [ApplicationNasConfig].
  /// [mountDomain] The domain name of the mount target.
  /// [mountPath] The mount path of the container.
  /// [nasId] The ID of the NAS file system.
  /// [nasPath] The directory in the NAS file system.
  /// [readOnly] Specifies whether the application can read data from or write data to resources in the directory of the NAS. Valid values: `true` and `false`. If you set `read_only` to `false`, the application has the read and write permissions.
  ApplicationNasConfig({
    this.mountDomain,
    this.mountPath,
    this.nasId,
    this.nasPath,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountDomain': ?mountDomain,
      'mountPath': ?mountPath,
      'nasId': ?nasId,
      'nasPath': ?nasPath,
      'readOnly': ?readOnly,
    };
  }

  factory ApplicationNasConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationNasConfig(
      mountDomain: map['mountDomain'] == null ? null : map['mountDomain'] as String,
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      nasId: map['nasId'] == null ? null : map['nasId'] as String,
      nasPath: map['nasPath'] == null ? null : map['nasPath'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

