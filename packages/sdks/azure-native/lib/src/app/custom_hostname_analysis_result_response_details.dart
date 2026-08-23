// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detailed errors.
class CustomHostnameAnalysisResultResponseDetails {
  /// Standardized string to programmatically identify the error.
  final pulumi.Input<String> code;
  /// Detailed error description and debugging information.
  final pulumi.Input<String> message;
  /// Detailed error description and debugging information.
  final pulumi.Input<String> target;

  /// Creates a new [CustomHostnameAnalysisResultResponseDetails].
  /// [code] Standardized string to programmatically identify the error.
  /// [message] Detailed error description and debugging information.
  /// [target] Detailed error description and debugging information.
  const CustomHostnameAnalysisResultResponseDetails({
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
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
