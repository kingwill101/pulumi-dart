// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent a parameter with constrains and metadata.
class ParameterDefinitionResponse {
  /// Array of allowed values for this parameter.
  final pulumi.Input<List<dynamic>>? allowedValues;
  /// Default Value for this parameter.
  final pulumi.Input<dynamic>? defaultValue;
  /// Description of this parameter/resourceGroup.
  final pulumi.Input<String>? description;
  /// DisplayName of this parameter/resourceGroup.
  final pulumi.Input<String>? displayName;
  /// StrongType for UI to render rich experience during blueprint assignment. Supported strong types are resourceType, principalId and location.
  final pulumi.Input<String>? strongType;
  /// Allowed data types for Resource Manager template parameters.
  final pulumi.Input<String> type;

  /// Creates a new [ParameterDefinitionResponse].
  /// [allowedValues] Array of allowed values for this parameter.
  /// [defaultValue] Default Value for this parameter.
  /// [description] Description of this parameter/resourceGroup.
  /// [displayName] DisplayName of this parameter/resourceGroup.
  /// [strongType] StrongType for UI to render rich experience during blueprint assignment. Supported strong types are resourceType, principalId and location.
  /// [type] Allowed data types for Resource Manager template parameters.
  ParameterDefinitionResponse({
    this.allowedValues,
    this.defaultValue,
    this.description,
    this.displayName,
    this.strongType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'displayName': ?displayName,
      'strongType': ?strongType,
      'type': type,
    };
  }

  factory ParameterDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ParameterDefinitionResponse(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strongType: (() { final guardedValue = map['strongType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

