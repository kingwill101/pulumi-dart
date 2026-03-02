// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiplexProgramMultiplexProgramSettingsServiceDescriptor {
  /// Unique provider name.
  final pulumi.Input<String> providerName;
  /// Unique service name.
  final pulumi.Input<String> serviceName;

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
      providerName: (map['providerName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

