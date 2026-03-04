// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_units_response.dart';

/// Deployment Configuration
class DeploymentConfigurationResponse {
  /// Scale units will contains list of deployment data
  final pulumi.Input<List<ScaleUnitsResponse>> scaleUnits;

  /// deployment template version
  final pulumi.Input<String>? version;

  /// Creates a new [DeploymentConfigurationResponse].
  /// [scaleUnits] Scale units will contains list of deployment data
  /// [version] deployment template version
  DeploymentConfigurationResponse({required this.scaleUnits, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleUnits':
          pulumi.Input.mapInputValue<
            List<ScaleUnitsResponse>,
            List<Map<String, dynamic>>
          >(
            scaleUnits,
            (value) =>
                pulumi.Input.encodeList<
                  ScaleUnitsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'version': ?version,
    };
  }

  factory DeploymentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigurationResponse(
      scaleUnits: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ScaleUnitsResponse>(
          map['scaleUnits']!,
          (value) => ScaleUnitsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
