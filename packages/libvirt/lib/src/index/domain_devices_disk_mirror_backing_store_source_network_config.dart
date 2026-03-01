// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig {
  /// Specifies a file for loading additional network configuration in the backing store source.
  final String file;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig].
  /// [file] Specifies a file for loading additional network configuration in the backing store source.
  DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig(
      file: map['file'] as String,
    );
  }
}

