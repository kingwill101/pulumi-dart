// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The azure resource error info.
class AzureResourceErrorInfoResponse {
  /// The error code.
  final String code;
  /// The error details.
  final List<AzureResourceErrorInfoResponse>? details;
  /// The error message.
  final String message;

  /// Creates a new [AzureResourceErrorInfoResponse].
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  AzureResourceErrorInfoResponse({
    required this.code,
    this.details,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': ?details == null ? null : pulumi.Input.encodeList<AzureResourceErrorInfoResponse, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'message': message,
    };
  }

  factory AzureResourceErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceErrorInfoResponse(
      code: map['code'] as String,
      details: map['details'] == null ? null : pulumi.Input.decodeList<AzureResourceErrorInfoResponse>(map['details'], (value) => AzureResourceErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}

