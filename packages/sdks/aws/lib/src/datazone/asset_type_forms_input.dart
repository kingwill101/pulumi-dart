// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetTypeFormsInput {
  final pulumi.Input<String> mapBlockKey;
  final pulumi.Input<bool>? required;
  final pulumi.Input<String> typeIdentifier;
  final pulumi.Input<String> typeRevision;

  /// Creates a new [AssetTypeFormsInput].
  /// [mapBlockKey] Required.
  /// [required] Optional.
  /// [typeIdentifier] Required.
  /// [typeRevision] Required.
  const AssetTypeFormsInput({
    required this.mapBlockKey,
    this.required,
    required this.typeIdentifier,
    required this.typeRevision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapBlockKey': mapBlockKey,
      'required': ?required,
      'typeIdentifier': typeIdentifier,
      'typeRevision': typeRevision,
    };
  }

  factory AssetTypeFormsInput.fromMap(Map<String, dynamic> map) {
    return AssetTypeFormsInput(
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      typeIdentifier: pulumi.Input.fromValue(map['typeIdentifier'] as String),
      typeRevision: pulumi.Input.fromValue(map['typeRevision'] as String),
    );
  }
}
