// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the cluster record
class ClusterStatusEntityResponse {
  /// The number of Confluent Kafka Units
  final pulumi.Input<int>? cku;

  /// The lifecycle phase of the cluster
  final pulumi.Input<String>? phase;

  /// Creates a new [ClusterStatusEntityResponse].
  /// [cku] The number of Confluent Kafka Units
  /// [phase] The lifecycle phase of the cluster
  ClusterStatusEntityResponse({this.cku, this.phase});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cku': ?cku, 'phase': ?phase};
  }

  factory ClusterStatusEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStatusEntityResponse(
      cku: (() {
        final guardedValue = map['cku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      phase: (() {
        final guardedValue = map['phase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
