// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the asset endpoint profile status error properties.
class AssetEndpointProfileStatusErrorResponse {
  /// Error code for classification of errors (ex: 400, 404, 500, etc.).
  final pulumi.Input<int> code;
  /// Human readable helpful error message to provide additional context for error (ex: “targetAddress 'foo' is not a valid url”).
  final pulumi.Input<String> message;

  /// Creates a new [AssetEndpointProfileStatusErrorResponse].
  /// [code] Error code for classification of errors (ex: 400, 404, 500, etc.).
  /// [message] Human readable helpful error message to provide additional context for error (ex: “targetAddress 'foo' is not a valid url”).
  AssetEndpointProfileStatusErrorResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory AssetEndpointProfileStatusErrorResponse.fromMap(Map<String, dynamic> map) {
    return AssetEndpointProfileStatusErrorResponse(
      code: pulumi.Input.fromValue(map['code'] as int),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

