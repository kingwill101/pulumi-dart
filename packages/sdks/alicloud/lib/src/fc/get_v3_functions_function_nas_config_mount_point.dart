// ignore_for_file: unused_element, unnecessary_cast


class GetV3FunctionsFunctionNasConfigMountPoint {
  /// Use transport encryption to mount. Note: only general-purpose NAS supports transmission encryption.
  final bool enableTls;
  /// Mount Directory.
  final String mountDir;
  /// NAS server address.
  final String serverAddr;

  /// Creates a new [GetV3FunctionsFunctionNasConfigMountPoint].
  /// [enableTls] Use transport encryption to mount. Note: only general-purpose NAS supports transmission encryption.
  /// [mountDir] Mount Directory.
  /// [serverAddr] NAS server address.
  GetV3FunctionsFunctionNasConfigMountPoint({
    required this.enableTls,
    required this.mountDir,
    required this.serverAddr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTls': enableTls,
      'mountDir': mountDir,
      'serverAddr': serverAddr,
    };
  }

  factory GetV3FunctionsFunctionNasConfigMountPoint.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionNasConfigMountPoint(
      enableTls: map['enableTls'] as bool,
      mountDir: map['mountDir'] as String,
      serverAddr: map['serverAddr'] as String,
    );
  }
}

