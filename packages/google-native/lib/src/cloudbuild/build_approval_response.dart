// ignore_for_file: unused_element, unnecessary_cast

import 'approval_config_response.dart';
import 'approval_result_response.dart';

/// BuildApproval describes a build's approval configuration, state, and result.
class BuildApprovalResponse {
  /// Configuration for manual approval of this build.
  final ApprovalConfigResponse config;
  /// Result of manual approval for this Build.
  final ApprovalResultResponse result;
  /// The state of this build's approval.
  final String state;

  /// Creates a new [BuildApprovalResponse].
  /// [config] Configuration for manual approval of this build.
  /// [result] Result of manual approval for this Build.
  /// [state] The state of this build's approval.
  BuildApprovalResponse({
    required this.config,
    required this.result,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config.toMap(),
      'result': result.toMap(),
      'state': state,
    };
  }

  factory BuildApprovalResponse.fromMap(Map<String, dynamic> map) {
    return BuildApprovalResponse(
      config: ApprovalConfigResponse.fromMap((map['config'] as Map).cast<String, dynamic>()),
      result: ApprovalResultResponse.fromMap((map['result'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}

