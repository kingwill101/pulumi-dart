// ignore_for_file: unused_element, unnecessary_cast


class MLTableJobInputResponse {
  /// Description for the input.
  final String? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'mltable'.
  final String jobInputType;
  /// Input Asset Delivery Mode.
  final String? mode;
  /// [Required] Input Asset URI.
  final String uri;

  /// Creates a new [MLTableJobInputResponse].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [mode] Input Asset Delivery Mode.
  /// [uri] [Required] Input Asset URI.
  MLTableJobInputResponse({
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

  factory MLTableJobInputResponse.fromMap(Map<String, dynamic> map) {
    return MLTableJobInputResponse(
      description: map['description'] == null ? null : map['description'] as String,
      jobInputType: map['jobInputType'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      uri: map['uri'] as String,
    );
  }
}

