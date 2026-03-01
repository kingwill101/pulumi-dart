// ignore_for_file: unused_element, unnecessary_cast


class MigrationAssessmentResponseImpactedObjects {
  final String? impactDetail;
  final String? name;
  final String? objectType;

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
      impactDetail: map['impactDetail'] == null ? null : map['impactDetail'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      objectType: map['objectType'] == null ? null : map['objectType'] as String,
    );
  }
}

