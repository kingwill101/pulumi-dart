// ignore_for_file: unused_element, unnecessary_cast


class UriFileJobOutputResponse {
  /// Description for the output.
  final String? description;
  /// Enum to determine the Job Output Type.
  /// Expected value is 'uri_file'.
  final String jobOutputType;
  /// Output Asset Delivery Mode.
  final String? mode;
  /// Output Asset URI.
  final String? uri;

  /// Creates a new [UriFileJobOutputResponse].
  /// [description] Description for the output.
  /// [jobOutputType] Enum to determine the Job Output Type.
  /// [mode] Output Asset Delivery Mode.
  /// [uri] Output Asset URI.
  UriFileJobOutputResponse({
    this.description,
    required this.jobOutputType,
    this.mode,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobOutputType': jobOutputType,
      'mode': ?mode,
      'uri': ?uri,
    };
  }

  factory UriFileJobOutputResponse.fromMap(Map<String, dynamic> map) {
    return UriFileJobOutputResponse(
      description: map['description'] == null ? null : map['description'] as String,
      jobOutputType: map['jobOutputType'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

