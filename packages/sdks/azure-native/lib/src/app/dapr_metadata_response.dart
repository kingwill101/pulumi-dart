// ignore_for_file: unused_element, unnecessary_cast


/// Dapr component metadata.
class DaprMetadataResponse {
  /// Metadata property name.
  final String? name;
  /// Name of the Dapr Component secret from which to pull the metadata property value.
  final String? secretRef;
  /// Metadata property value.
  final String? value;

  /// Creates a new [DaprMetadataResponse].
  /// [name] Metadata property name.
  /// [secretRef] Name of the Dapr Component secret from which to pull the metadata property value.
  /// [value] Metadata property value.
  DaprMetadataResponse({
    this.name,
    this.secretRef,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretRef': ?secretRef,
      'value': ?value,
    };
  }

  factory DaprMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DaprMetadataResponse(
      name: map['name'] == null ? null : map['name'] as String,
      secretRef: map['secretRef'] == null ? null : map['secretRef'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

