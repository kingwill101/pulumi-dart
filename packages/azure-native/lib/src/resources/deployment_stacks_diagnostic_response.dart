// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_additional_info_response.dart';

/// The error additional info
class DeploymentStacksDiagnosticResponse {
  /// Additional error information.
  final List<ErrorAdditionalInfoResponse>? additionalInfo;
  /// The error code.
  final String code;
  /// Denotes the additional response level.
  final String level;
  /// The error message.
  final String message;
  /// The error target.
  final String? target;

  /// Creates a new [DeploymentStacksDiagnosticResponse].
  /// [additionalInfo] Additional error information.
  /// [code] The error code.
  /// [level] Denotes the additional response level.
  /// [message] The error message.
  /// [target] The error target.
  DeploymentStacksDiagnosticResponse({
    this.additionalInfo,
    required this.code,
    required this.level,
    required this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?additionalInfo == null ? null : pulumi.Input.encodeList<ErrorAdditionalInfoResponse, Map<String, dynamic>>(additionalInfo!, (value) => value.toMap()),
      'code': code,
      'level': level,
      'message': message,
      'target': ?target,
    };
  }

  factory DeploymentStacksDiagnosticResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksDiagnosticResponse(
      additionalInfo: map['additionalInfo'] == null ? null : pulumi.Input.decodeList<ErrorAdditionalInfoResponse>(map['additionalInfo'], (value) => ErrorAdditionalInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      code: map['code'] as String,
      level: map['level'] as String,
      message: map['message'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

