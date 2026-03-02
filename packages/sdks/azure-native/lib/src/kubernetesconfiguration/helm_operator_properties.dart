// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for Helm operator.
class HelmOperatorProperties {
  /// Values override for the operator Helm chart.
  final pulumi.Input<String>? chartValues;
  /// Version of the operator Helm chart.
  final pulumi.Input<String>? chartVersion;

  /// Creates a new [HelmOperatorProperties].
  /// [chartValues] Values override for the operator Helm chart.
  /// [chartVersion] Version of the operator Helm chart.
  HelmOperatorProperties({
    this.chartValues,
    this.chartVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartValues': ?chartValues,
      'chartVersion': ?chartVersion,
    };
  }

  factory HelmOperatorProperties.fromMap(Map<String, dynamic> map) {
    return HelmOperatorProperties(
      chartValues: map['chartValues'] == null ? null : (map['chartValues']! as String).input(),
      chartVersion: map['chartVersion'] == null ? null : (map['chartVersion']! as String).input(),
    );
  }
}

