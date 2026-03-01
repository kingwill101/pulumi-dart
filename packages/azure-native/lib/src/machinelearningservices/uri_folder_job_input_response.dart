// ignore_for_file: unused_element, unnecessary_cast


class UriFolderJobInputResponse {
  /// Description for the input.
  final String? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'uri_folder'.
  final String jobInputType;
  /// Input Asset Delivery Mode.
  final String? mode;
  /// [Required] Input Asset URI.
  final String uri;

  /// Creates a new [UriFolderJobInputResponse].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [mode] Input Asset Delivery Mode.
  /// [uri] [Required] Input Asset URI.
  UriFolderJobInputResponse({
    this.description,
    required this.jobInputType,
    this.mode,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobInputType': jobInputType,
      'mode': ?mode,
      'uri': uri,
    };
  }

  factory UriFolderJobInputResponse.fromMap(Map<String, dynamic> map) {
    return UriFolderJobInputResponse(
      description: map['description'] == null ? null : map['description'] as String,
      jobInputType: map['jobInputType'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      uri: map['uri'] as String,
    );
  }
}

