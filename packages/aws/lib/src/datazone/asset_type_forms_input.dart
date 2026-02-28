// ignore_for_file: unused_element, unnecessary_cast


class AssetTypeFormsInput {
  final String mapBlockKey;
  final bool? required;
  final String typeIdentifier;
  final String typeRevision;

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
      mapBlockKey: map['mapBlockKey'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      typeIdentifier: map['typeIdentifier'] as String,
      typeRevision: map['typeRevision'] as String,
    );
  }
}

