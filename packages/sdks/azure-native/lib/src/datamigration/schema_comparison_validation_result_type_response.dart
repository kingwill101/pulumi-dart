// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description about the errors happen while performing migration validation
class SchemaComparisonValidationResultTypeResponse {
  /// Name of the object that has the difference
  final pulumi.Input<String>? objectName;
  /// Type of the object that has the difference. e.g (Table/View/StoredProcedure)
  final pulumi.Input<String>? objectType;
  /// Update action type with respect to target
  final pulumi.Input<String>? updateAction;

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
      objectName: map['objectName'] == null ? null : (map['objectName']! as String).input(),
      objectType: map['objectType'] == null ? null : (map['objectType']! as String).input(),
      updateAction: map['updateAction'] == null ? null : (map['updateAction']! as String).input(),
    );
  }
}

