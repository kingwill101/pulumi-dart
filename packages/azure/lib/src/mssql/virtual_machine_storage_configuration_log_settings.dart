// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineStorageConfigurationLogSettings {
  final String defaultFilePath;
  final List<int> luns;

  /// Creates a new [VirtualMachineStorageConfigurationLogSettings].
  /// [defaultFilePath] Required.
  /// [luns] Required.
  VirtualMachineStorageConfigurationLogSettings({
    required this.defaultFilePath,
    required this.luns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultFilePath': defaultFilePath,
      'luns': luns,
    };
  }

  factory VirtualMachineStorageConfigurationLogSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageConfigurationLogSettings(
      defaultFilePath: map['defaultFilePath'] as String,
      luns: (map['luns'] as List).cast<int>(),
    );
  }
}

