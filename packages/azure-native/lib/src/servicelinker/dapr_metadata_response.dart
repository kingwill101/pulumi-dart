// ignore_for_file: unused_element, unnecessary_cast


/// The dapr component metadata.
class DaprMetadataResponse {
  /// The description of the metadata, returned from configuration api
  final String? description;
  /// Metadata property name.
  final String? name;
  /// The value indicating whether the metadata is required or not
  final String? required;
  /// The secret name where dapr could get value
  final String? secretRef;
  /// Metadata property value.
  final String? value;

  /// Creates a new [DaprMetadataResponse].
  /// [description] The description of the metadata, returned from configuration api
  /// [name] Metadata property name.
  /// [required] The value indicating whether the metadata is required or not
  /// [secretRef] The secret name where dapr could get value
  /// [value] Metadata property value.
  DaprMetadataResponse({
    this.description,
    this.name,
    this.required,
    this.secretRef,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'required': ?required,
      'secretRef': ?secretRef,
      'value': ?value,
    };
  }

  factory DaprMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DaprMetadataResponse(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      required: map['required'] == null ? null : map['required'] as String,
      secretRef: map['secretRef'] == null ? null : map['secretRef'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

