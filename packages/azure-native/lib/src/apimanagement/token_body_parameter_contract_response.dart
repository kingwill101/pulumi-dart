// ignore_for_file: unused_element, unnecessary_cast


/// OAuth acquire token request body parameter (www-url-form-encoded).
class TokenBodyParameterContractResponse {
  /// body parameter name.
  final String name;
  /// body parameter value.
  final String value;

  /// Creates a new [TokenBodyParameterContractResponse].
  /// [name] body parameter name.
  /// [value] body parameter value.
  TokenBodyParameterContractResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TokenBodyParameterContractResponse.fromMap(Map<String, dynamic> map) {
    return TokenBodyParameterContractResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

