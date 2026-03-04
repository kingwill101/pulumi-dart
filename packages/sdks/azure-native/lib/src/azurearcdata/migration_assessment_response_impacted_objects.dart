// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationAssessmentResponseImpactedObjects {
  final pulumi.Input<String>? impactDetail;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? objectType;

  /// Creates a new [MigrationAssessmentResponseImpactedObjects].
  /// [impactDetail] Optional.
  /// [name] Optional.
  /// [objectType] Optional.
  MigrationAssessmentResponseImpactedObjects({
    this.impactDetail,
    this.name,
    this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'impactDetail': ?impactDetail,
      'name': ?name,
      'objectType': ?objectType,
    };
  }

  factory MigrationAssessmentResponseImpactedObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrationAssessmentResponseImpactedObjects(
      impactDetail: (() {
        final guardedValue = map['impactDetail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      objectType: (() {
        final guardedValue = map['objectType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
