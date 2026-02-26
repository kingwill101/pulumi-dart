// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'phase_config.dart';

/// CustomCanaryDeployment represents the custom canary deployment configuration.
class CustomCanaryDeployment {
  /// Configuration for each phase in the canary deployment in the order executed.
  final List<PhaseConfig> phaseConfigs;

  CustomCanaryDeployment({
    required this.phaseConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['phaseConfigs'] = Input.encodeList<PhaseConfig, Map<String, dynamic>>(
        phaseConfigs, (value) => value.toMap());
    return map;
  }

  factory CustomCanaryDeployment.fromMap(Map<String, dynamic> map) {
    return CustomCanaryDeployment(
      phaseConfigs: Input.decodeList<PhaseConfig>(
          map['phaseConfigs'],
          (value) =>
              PhaseConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
