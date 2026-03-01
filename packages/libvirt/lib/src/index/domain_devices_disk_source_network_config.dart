// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceNetworkConfig {
  /// Specifies a file for loading additional network configuration in the backing store source.
  final String file;

  /// Creates a new [DomainDevicesDiskSourceNetworkConfig].
  /// [file] Specifies a file for loading additional network configuration in the backing store source.
  DomainDevicesDiskSourceNetworkConfig({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainDevicesDiskSourceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkConfig(
      file: map['file'] as String,
    );
  }
}

