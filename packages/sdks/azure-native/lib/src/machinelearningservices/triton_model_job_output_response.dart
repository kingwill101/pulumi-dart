// ignore_for_file: unused_element, unnecessary_cast


class TritonModelJobOutputResponse {
  /// Description for the output.
  final String? description;
  /// Enum to determine the Job Output Type.
  /// Expected value is 'triton_model'.
  final String jobOutputType;
  /// Output Asset Delivery Mode.
  final String? mode;
  /// Output Asset URI.
  final String? uri;

  /// Creates a new [TritonModelJobOutputResponse].
  /// [description] Description for the output.
  /// [jobOutputType] Enum to determine the Job Output Type.
  /// [mode] Output Asset Delivery Mode.
  /// [uri] Output Asset URI.
  TritonModelJobOutputResponse({
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

  factory TritonModelJobOutputResponse.fromMap(Map<String, dynamic> map) {
    return TritonModelJobOutputResponse(
      description: map['description'] == null ? null : map['description'] as String,
      jobOutputType: map['jobOutputType'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

