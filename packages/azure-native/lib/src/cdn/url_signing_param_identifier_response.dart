// ignore_for_file: unused_element, unnecessary_cast


/// Defines how to identify a parameter for a specific purpose e.g. expires
class UrlSigningParamIdentifierResponse {
  /// Indicates the purpose of the parameter
  final String paramIndicator;
  /// Parameter name
  final String paramName;

  /// Creates a new [UrlSigningParamIdentifierResponse].
  /// [paramIndicator] Indicates the purpose of the parameter
  /// [paramName] Parameter name
  UrlSigningParamIdentifierResponse({
    required this.paramIndicator,
    required this.paramName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paramIndicator': paramIndicator,
      'paramName': paramName,
    };
  }

  factory UrlSigningParamIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return UrlSigningParamIdentifierResponse(
      paramIndicator: map['paramIndicator'] as String,
      paramName: map['paramName'] as String,
    );
  }
}

