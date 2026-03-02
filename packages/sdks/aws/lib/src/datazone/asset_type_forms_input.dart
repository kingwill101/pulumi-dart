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
  AssetTypeFormsInput({
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
      mapBlockKey: (map['mapBlockKey'] as String).input(),
      required: map['required'] == null ? null : ((map['required'] as bool).input()).input(),
      typeIdentifier: (map['typeIdentifier'] as String).input(),
      typeRevision: (map['typeRevision'] as String).input(),
    );
  }
}

