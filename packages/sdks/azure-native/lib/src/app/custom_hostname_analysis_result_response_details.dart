// ignore_for_file: unused_element, unnecessary_cast


/// Detailed errors.
class CustomHostnameAnalysisResultResponseDetails {
  /// Standardized string to programmatically identify the error.
  final String code;
  /// Detailed error description and debugging information.
  final String message;
  /// Detailed error description and debugging information.
  final String target;

  /// Creates a new [CustomHostnameAnalysisResultResponseDetails].
  /// [code] Standardized string to programmatically identify the error.
  /// [message] Detailed error description and debugging information.
  /// [target] Detailed error description and debugging information.
  CustomHostnameAnalysisResultResponseDetails({
    required this.code,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'target': target,
    };
  }

  factory CustomHostnameAnalysisResultResponseDetails.fromMap(Map<String, dynamic> map) {
    return CustomHostnameAnalysisResultResponseDetails(
      code: map['code'] as String,
      message: map['message'] as String,
      target: map['target'] as String,
    );
  }
}

