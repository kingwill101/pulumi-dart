// ignore_for_file: unused_element, unnecessary_cast


class CustomModelJobInput {
  /// Description for the input.
  final String? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'custom_model'.
  final String jobInputType;
  /// Input Asset Delivery Mode.
  final String? mode;
  /// [Required] Input Asset URI.
  final String uri;

  /// Creates a new [CustomModelJobInput].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [mode] Input Asset Delivery Mode.
  /// [uri] [Required] Input Asset URI.
  CustomModelJobInput({
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

  factory CustomModelJobInput.fromMap(Map<String, dynamic> map) {
    return CustomModelJobInput(
      description: map['description'] == null ? null : map['description'] as String,
      jobInputType: map['jobInputType'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      uri: map['uri'] as String,
    );
  }
}

