// ignore_for_file: unused_element, unnecessary_cast


/// Defines how to identify a parameter for a specific purpose e.g. expires
class UrlSigningParamIdentifier {
  /// Indicates the purpose of the parameter
  final String paramIndicator;
  /// Parameter name
  final String paramName;

  /// Creates a new [UrlSigningParamIdentifier].
  /// [paramIndicator] Indicates the purpose of the parameter
  /// [paramName] Parameter name
  UrlSigningParamIdentifier({
    required this.paramIndicator,
    required this.paramName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paramIndicator': paramIndicator,
      'paramName': paramName,
    };
  }

  factory UrlSigningParamIdentifier.fromMap(Map<String, dynamic> map) {
    return UrlSigningParamIdentifier(
      paramIndicator: map['paramIndicator'] as String,
      paramName: map['paramName'] as String,
    );
  }
}

