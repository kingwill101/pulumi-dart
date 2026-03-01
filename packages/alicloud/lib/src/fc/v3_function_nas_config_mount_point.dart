// ignore_for_file: unused_element, unnecessary_cast


class V3FunctionNasConfigMountPoint {
  /// Use transport encryption to mount. Note: only general-purpose NAS supports transmission encryption.
  final bool? enableTls;
  final String? mountDir;
  /// NAS server address
  final String? serverAddr;

  /// Creates a new [V3FunctionNasConfigMountPoint].
  /// [enableTls] Use transport encryption to mount. Note: only general-purpose NAS supports transmission encryption.
  /// [mountDir] Optional.
  /// [serverAddr] NAS server address
  V3FunctionNasConfigMountPoint({
    this.enableTls,
    this.mountDir,
    this.serverAddr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTls': ?enableTls,
      'mountDir': ?mountDir,
      'serverAddr': ?serverAddr,
    };
  }

  factory V3FunctionNasConfigMountPoint.fromMap(Map<String, dynamic> map) {
    return V3FunctionNasConfigMountPoint(
      enableTls: map['enableTls'] == null ? null : map['enableTls'] as bool,
      mountDir: map['mountDir'] == null ? null : map['mountDir'] as String,
      serverAddr: map['serverAddr'] == null ? null : map['serverAddr'] as String,
    );
  }
}

