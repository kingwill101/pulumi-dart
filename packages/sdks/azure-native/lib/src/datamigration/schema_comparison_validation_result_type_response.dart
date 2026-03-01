// ignore_for_file: unused_element, unnecessary_cast


/// Description about the errors happen while performing migration validation
class SchemaComparisonValidationResultTypeResponse {
  /// Name of the object that has the difference
  final String? objectName;
  /// Type of the object that has the difference. e.g (Table/View/StoredProcedure)
  final String? objectType;
  /// Update action type with respect to target
  final String? updateAction;

  /// Creates a new [SchemaComparisonValidationResultTypeResponse].
  /// [objectName] Name of the object that has the difference
  /// [objectType] Type of the object that has the difference. e.g (Table/View/StoredProcedure)
  /// [updateAction] Update action type with respect to target
  SchemaComparisonValidationResultTypeResponse({
    this.objectName,
    this.objectType,
    this.updateAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectName': ?objectName,
      'objectType': ?objectType,
      'updateAction': ?updateAction,
    };
  }

  factory SchemaComparisonValidationResultTypeResponse.fromMap(Map<String, dynamic> map) {
    return SchemaComparisonValidationResultTypeResponse(
      objectName: map['objectName'] == null ? null : map['objectName'] as String,
      objectType: map['objectType'] == null ? null : map['objectType'] as String,
      updateAction: map['updateAction'] == null ? null : map['updateAction'] as String,
    );
  }
}

