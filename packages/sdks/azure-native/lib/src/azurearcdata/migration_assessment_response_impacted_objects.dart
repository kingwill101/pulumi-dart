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

  factory MigrationAssessmentResponseImpactedObjects.fromMap(Map<String, dynamic> map) {
    return MigrationAssessmentResponseImpactedObjects(
      impactDetail: map['impactDetail'] == null ? null : (map['impactDetail'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      objectType: map['objectType'] == null ? null : (map['objectType'] as String).input(),
    );
  }
}

