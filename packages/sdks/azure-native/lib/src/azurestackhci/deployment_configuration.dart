// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_units.dart';

/// Deployment Configuration
class DeploymentConfiguration {
  /// Scale units will contains list of deployment data
  final pulumi.Input<List<ScaleUnits>> scaleUnits;
  /// deployment template version
  final pulumi.Input<String>? version;

  /// Creates a new [DeploymentConfiguration].
  /// [scaleUnits] Scale units will contains list of deployment data
  /// [version] deployment template version
  DeploymentConfiguration({
    required this.scaleUnits,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleUnits': pulumi.Input.mapInputValue<List<ScaleUnits>, List<Map<String, dynamic>>>(scaleUnits, (value) => pulumi.Input.encodeList<ScaleUnits, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory DeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentConfiguration(
      scaleUnits: (pulumi.Input.decodeList<ScaleUnits>(map['scaleUnits'], (value) => ScaleUnits.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

