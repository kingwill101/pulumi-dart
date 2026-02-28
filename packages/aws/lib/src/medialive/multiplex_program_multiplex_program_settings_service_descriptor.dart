// ignore_for_file: unused_element, unnecessary_cast


class MultiplexProgramMultiplexProgramSettingsServiceDescriptor {
  /// Unique provider name.
  final String providerName;
  /// Unique service name.
  final String serviceName;

  /// Creates a new [MultiplexProgramMultiplexProgramSettingsServiceDescriptor].
  /// [providerName] Unique provider name.
  /// [serviceName] Unique service name.
  MultiplexProgramMultiplexProgramSettingsServiceDescriptor({
    required this.providerName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerName': providerName,
      'serviceName': serviceName,
    };
  }

  factory MultiplexProgramMultiplexProgramSettingsServiceDescriptor.fromMap(Map<String, dynamic> map) {
    return MultiplexProgramMultiplexProgramSettingsServiceDescriptor(
      providerName: map['providerName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

