// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_response.dart';

/// Maintenance Mode
class MaintenanceModeConfigurationModelResponse {
  /// Justification for entering or exiting Maintenance Mode
  final pulumi.Input<String>? justification;
  /// Current mode of Maintenance Mode Configuration
  final pulumi.Input<String> mode;
  /// The user, group or service principal object affected by Maintenance Mode
  final pulumi.Input<List<PrincipalResponse>>? principals;

  /// Creates a new [MaintenanceModeConfigurationModelResponse].
  /// [justification] Justification for entering or exiting Maintenance Mode
  /// [mode] Current mode of Maintenance Mode Configuration
  /// [principals] The user, group or service principal object affected by Maintenance Mode
  MaintenanceModeConfigurationModelResponse({
    this.justification,
    required this.mode,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'justification': ?justification,
      'mode': mode,
      'principals': ?pulumi.Input.mapOptionalInputValue<List<PrincipalResponse>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<PrincipalResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MaintenanceModeConfigurationModelResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceModeConfigurationModelResponse(
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrincipalResponse>(guardedValue, (value) => PrincipalResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

