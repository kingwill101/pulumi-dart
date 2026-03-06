// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The API deployment parameter metadata.
class ApiDeploymentParameterMetadataResponse {
  /// The description.
  final pulumi.Input<String>? description;
  /// The display name.
  final pulumi.Input<String>? displayName;
  /// Indicates whether its required.
  final pulumi.Input<bool>? isRequired;
  /// The type.
  final pulumi.Input<String>? type;
  /// The visibility.
  final pulumi.Input<String>? visibility;

  /// Creates a new [ApiDeploymentParameterMetadataResponse].
  /// [description] The description.
  /// [displayName] The display name.
  /// [isRequired] Indicates whether its required.
  /// [type] The type.
  /// [visibility] The visibility.
  const ApiDeploymentParameterMetadataResponse({
    this.description,
    this.displayName,
    this.isRequired,
    this.type,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'isRequired': ?isRequired,
      'type': ?type,
      'visibility': ?visibility,
    };
  }

  factory ApiDeploymentParameterMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ApiDeploymentParameterMetadataResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRequired: (() { final guardedValue = map['isRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

