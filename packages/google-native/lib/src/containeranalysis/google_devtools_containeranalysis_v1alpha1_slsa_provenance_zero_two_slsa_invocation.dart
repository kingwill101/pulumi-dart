// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_config_source.dart';

/// Identifies the event that kicked off the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation {
  /// Describes where the config file that kicked off the build came from.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource? configSource;
  /// Any other builder-controlled inputs necessary for correctly evaluating the build.
  final Map<String, String>? environment;
  /// Collection of all external inputs that influenced the build on top of invocation.configSource.
  final Map<String, String>? parameters;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation].
  /// [configSource] Describes where the config file that kicked off the build came from.
  /// [environment] Any other builder-controlled inputs necessary for correctly evaluating the build.
  /// [parameters] Collection of all external inputs that influenced the build on top of invocation.configSource.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation({
    this.configSource,
    this.environment,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSource': ?configSource == null ? null : configSource!.toMap(),
      'environment': ?environment,
      'parameters': ?parameters,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation(
      configSource: map['configSource'] == null ? null : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource.fromMap((map['configSource'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null ? null : (map['environment'] as Map).cast<String, String>(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

