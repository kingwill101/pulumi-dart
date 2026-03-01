// ignore_for_file: unused_element, unnecessary_cast


class MLFlowModelJobInputResponse {
  /// Description for the input.
  final String? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'mlflow_model'.
  final String jobInputType;
  /// Input Asset Delivery Mode.
  final String? mode;
  /// [Required] Input Asset URI.
  final String uri;

  /// Creates a new [MLFlowModelJobInputResponse].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [mode] Input Asset Delivery Mode.
  /// [uri] [Required] Input Asset URI.
  MLFlowModelJobInputResponse({
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

  factory MLFlowModelJobInputResponse.fromMap(Map<String, dynamic> map) {
    return MLFlowModelJobInputResponse(
      description: map['description'] == null ? null : map['description'] as String,
      jobInputType: map['jobInputType'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      uri: map['uri'] as String,
    );
  }
}

