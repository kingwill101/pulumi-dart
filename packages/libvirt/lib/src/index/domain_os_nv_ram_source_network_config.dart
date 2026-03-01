// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceNetworkConfig {
  /// Specifies a file for loading additional network configuration in the backing store source.
  final String file;

  /// Creates a new [DomainOsNvRamSourceNetworkConfig].
  /// [file] Specifies a file for loading additional network configuration in the backing store source.
  DomainOsNvRamSourceNetworkConfig({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainOsNvRamSourceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkConfig(
      file: map['file'] as String,
    );
  }
}

