// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for Helm operator.
class HelmOperatorPropertiesResponse {
  /// Values override for the operator Helm chart.
  final pulumi.Input<String?>? chartValues;
  /// Version of the operator Helm chart.
  final pulumi.Input<String?>? chartVersion;

  /// Creates a new [HelmOperatorPropertiesResponse].
  /// [chartValues] Values override for the operator Helm chart.
  /// [chartVersion] Version of the operator Helm chart.
  const HelmOperatorPropertiesResponse({
    this.chartValues,
    this.chartVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartValues': ?chartValues,
      'chartVersion': ?chartVersion,
    };
  }

  factory HelmOperatorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HelmOperatorPropertiesResponse(
      chartValues: (() { final guardedValue = map['chartValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chartVersion: (() { final guardedValue = map['chartVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
