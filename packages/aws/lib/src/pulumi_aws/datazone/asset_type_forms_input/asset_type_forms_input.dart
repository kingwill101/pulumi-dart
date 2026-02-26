// ignore_for_file: unused_element, unnecessary_cast

class AssetTypeFormsInput {
  final String mapBlockKey;
  final bool? required;
  final String typeIdentifier;
  final String typeRevision;

  AssetTypeFormsInput({
    required this.mapBlockKey,
    this.required,
    required this.typeIdentifier,
    required this.typeRevision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mapBlockKey'] = mapBlockKey;
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    map['typeIdentifier'] = typeIdentifier;
    map['typeRevision'] = typeRevision;
    return map;
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
