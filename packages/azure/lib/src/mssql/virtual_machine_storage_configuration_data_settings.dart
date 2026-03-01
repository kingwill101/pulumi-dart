// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineStorageConfigurationDataSettings {
  final String defaultFilePath;
  final List<int> luns;

  /// Creates a new [VirtualMachineStorageConfigurationDataSettings].
  /// [defaultFilePath] Required.
  /// [luns] Required.
  VirtualMachineStorageConfigurationDataSettings({
    required this.defaultFilePath,
    required this.luns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultFilePath': defaultFilePath,
      'luns': luns,
    };
  }

  factory VirtualMachineStorageConfigurationDataSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageConfigurationDataSettings(
      defaultFilePath: map['defaultFilePath'] as String,
      luns: (map['luns'] as List).cast<int>(),
    );
  }
}

