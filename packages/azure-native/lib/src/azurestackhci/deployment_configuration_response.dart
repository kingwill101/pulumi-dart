// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_units_response.dart';

/// Deployment Configuration
class DeploymentConfigurationResponse {
  /// Scale units will contains list of deployment data
  final List<ScaleUnitsResponse> scaleUnits;
  /// deployment template version
  final String? version;

  /// Creates a new [DeploymentConfigurationResponse].
  /// [scaleUnits] Scale units will contains list of deployment data
  /// [version] deployment template version
  DeploymentConfigurationResponse({
    required this.scaleUnits,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleUnits': pulumi.Input.encodeList<ScaleUnitsResponse, Map<String, dynamic>>(scaleUnits, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory DeploymentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigurationResponse(
      scaleUnits: pulumi.Input.decodeList<ScaleUnitsResponse>(map['scaleUnits'], (value) => ScaleUnitsResponse.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

