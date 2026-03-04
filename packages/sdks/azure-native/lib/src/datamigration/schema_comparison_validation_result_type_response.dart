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

  factory SchemaComparisonValidationResultTypeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SchemaComparisonValidationResultTypeResponse(
      objectName: (() {
        final guardedValue = map['objectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      objectType: (() {
        final guardedValue = map['objectType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateAction: (() {
        final guardedValue = map['updateAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
