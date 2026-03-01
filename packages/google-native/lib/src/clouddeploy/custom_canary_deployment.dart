// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'phase_config.dart';

/// CustomCanaryDeployment represents the custom canary deployment configuration.
class CustomCanaryDeployment {
  /// Configuration for each phase in the canary deployment in the order executed.
  final List<PhaseConfig> phaseConfigs;

  /// Creates a new [CustomCanaryDeployment].
  /// [phaseConfigs] Configuration for each phase in the canary deployment in the order executed.
  CustomCanaryDeployment({required this.phaseConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phaseConfigs':
          pulumi.Input.encodeList<PhaseConfig, Map<String, dynamic>>(
            phaseConfigs,
            (value) => value.toMap(),
          ),
    };
  }

  factory CustomCanaryDeployment.fromMap(Map<String, dynamic> map) {
    return CustomCanaryDeployment(
      phaseConfigs: pulumi.Input.decodeList<PhaseConfig>(
        map['phaseConfigs'],
        (value) => PhaseConfig.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
