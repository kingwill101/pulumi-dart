// ignore_for_file: unused_element, unnecessary_cast


/// the constraints of the bot meta data.
class ServiceProviderParameterMetadataConstraintsResponse {
  /// Whether required the constraints of the bot meta data.
  final bool? required;

  /// Creates a new [ServiceProviderParameterMetadataConstraintsResponse].
  /// [required] Whether required the constraints of the bot meta data.
  ServiceProviderParameterMetadataConstraintsResponse({
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'required': ?required,
    };
  }

  factory ServiceProviderParameterMetadataConstraintsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceProviderParameterMetadataConstraintsResponse(
      required: map['required'] == null ? null : map['required'] as bool,
    );
  }
}

