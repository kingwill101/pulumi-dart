// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_response.dart';

/// Maintenance Mode
class MaintenanceModeConfigurationModelResponse {
  /// Justification for entering or exiting Maintenance Mode
  final String? justification;
  /// Current mode of Maintenance Mode Configuration
  final String mode;
  /// The user, group or service principal object affected by Maintenance Mode
  final List<PrincipalResponse>? principals;

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
      'principals': ?principals == null ? null : pulumi.Input.encodeList<PrincipalResponse, Map<String, dynamic>>(principals!, (value) => value.toMap()),
    };
  }

  factory MaintenanceModeConfigurationModelResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceModeConfigurationModelResponse(
      justification: map['justification'] == null ? null : map['justification'] as String,
      mode: map['mode'] as String,
      principals: map['principals'] == null ? null : pulumi.Input.decodeList<PrincipalResponse>(map['principals'], (value) => PrincipalResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

