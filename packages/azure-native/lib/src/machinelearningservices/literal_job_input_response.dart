// ignore_for_file: unused_element, unnecessary_cast


/// Literal input type.
class LiteralJobInputResponse {
  /// Description for the input.
  final String? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'literal'.
  final String jobInputType;
  /// [Required] Literal value for the input.
  final String value;

  /// Creates a new [LiteralJobInputResponse].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [value] [Required] Literal value for the input.
  LiteralJobInputResponse({
    this.description,
    required this.jobInputType,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobInputType': jobInputType,
      'value': value,
    };
  }

  factory LiteralJobInputResponse.fromMap(Map<String, dynamic> map) {
    return LiteralJobInputResponse(
      description: map['description'] == null ? null : map['description'] as String,
      jobInputType: map['jobInputType'] as String,
      value: map['value'] as String,
    );
  }
}

