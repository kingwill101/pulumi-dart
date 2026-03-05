// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The KPI GroupBy field metadata.
class KpiGroupByMetadataResponse {
  /// The display name.
  final pulumi.Input<Map<String, String>>? displayName;
  /// The name of the field.
  final pulumi.Input<String>? fieldName;
  /// The type of the field.
  final pulumi.Input<String>? fieldType;

  /// Creates a new [KpiGroupByMetadataResponse].
  /// [displayName] The display name.
  /// [fieldName] The name of the field.
  /// [fieldType] The type of the field.
  KpiGroupByMetadataResponse({
    this.displayName,
    this.fieldName,
    this.fieldType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'fieldName': ?fieldName,
      'fieldType': ?fieldType,
    };
  }

  factory KpiGroupByMetadataResponse.fromMap(Map<String, dynamic> map) {
    return KpiGroupByMetadataResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      fieldName: (() { final guardedValue = map['fieldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldType: (() { final guardedValue = map['fieldType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

