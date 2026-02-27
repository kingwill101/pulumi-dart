// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'phase_config_response.dart';

/// CustomCanaryDeployment represents the custom canary deployment configuration.
class CustomCanaryDeploymentResponse {
  /// Configuration for each phase in the canary deployment in the order executed.
  final List<PhaseConfigResponse> phaseConfigs;

  CustomCanaryDeploymentResponse({
    required this.phaseConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['phaseConfigs'] =
        Input.encodeList<PhaseConfigResponse, Map<String, dynamic>>(
            phaseConfigs, (value) => value.toMap());
    return map;
  }

  factory CustomCanaryDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return CustomCanaryDeploymentResponse(
      phaseConfigs: Input.decodeList<PhaseConfigResponse>(
          map['phaseConfigs'],
          (value) => PhaseConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
