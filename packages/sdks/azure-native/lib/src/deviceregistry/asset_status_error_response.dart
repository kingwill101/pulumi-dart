// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the asset status error properties.
class AssetStatusErrorResponse {
  /// Error code for classification of errors (ex: 400, 404, 500, etc.).
  final pulumi.Input<int> code;
  /// Human readable helpful error message to provide additional context for error (ex: “capability Id 'foo' does not exist”).
  final pulumi.Input<String> message;

  /// Creates a new [AssetStatusErrorResponse].
  /// [code] Error code for classification of errors (ex: 400, 404, 500, etc.).
  /// [message] Human readable helpful error message to provide additional context for error (ex: “capability Id 'foo' does not exist”).
  AssetStatusErrorResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory AssetStatusErrorResponse.fromMap(Map<String, dynamic> map) {
    return AssetStatusErrorResponse(
      code: (map['code'] as int).input(),
      message: (map['message'] as String).input(),
    );
  }
}

