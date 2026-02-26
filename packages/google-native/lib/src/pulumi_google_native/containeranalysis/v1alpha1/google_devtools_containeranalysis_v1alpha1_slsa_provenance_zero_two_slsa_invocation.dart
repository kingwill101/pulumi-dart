// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_config_source.dart';

/// Identifies the event that kicked off the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation {
  /// Describes where the config file that kicked off the build came from.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource?
      configSource;

  /// Any other builder-controlled inputs necessary for correctly evaluating the build.
  final Map<String, String>? environment;

  /// Collection of all external inputs that influenced the build on top of invocation.configSource.
  final Map<String, String>? parameters;

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation({
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

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation(
      configSource: map['configSource'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource
              .fromMap((map['configSource'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null
          ? null
          : (map['environment'] as Map).cast<String, String>(),
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
