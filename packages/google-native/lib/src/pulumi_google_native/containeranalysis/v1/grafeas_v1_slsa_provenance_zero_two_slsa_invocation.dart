// ignore_for_file: unused_element, unnecessary_cast

import 'grafeas_v1_slsa_provenance_zero_two_slsa_config_source.dart';

/// Identifies the event that kicked off the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation {
  final GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource? configSource;
  final Map<String, String>? environment;
  final Map<String, String>? parameters;

  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation({
    this.configSource,
    this.environment,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configSourceValue = configSource;
    if (configSourceValue != null) {
      map['configSource'] = configSourceValue.toMap();
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    return map;
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(
      Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(
      configSource: map['configSource'] == null
          ? null
          : GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromMap(
              (map['configSource'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null
          ? null
          : (map['environment'] as Map).cast<String, String>(),
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
