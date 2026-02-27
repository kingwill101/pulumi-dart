// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_policy_orchestrator_for_organization_orchestration_state_previous_iteration_state_error_detail/v2_policy_orchestrator_for_organization_orchestration_state_previous_iteration_state_error_detail.dart';

class V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateError {
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail>?
      details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  final String? message;

  V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateError({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = pulumi.Input.encodeList<
          V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail,
          Map<String, dynamic>>(detailsValue, (value) => value.toMap());
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateError.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateError(
      code: map['code'] == null ? null : map['code'] as int,
      details: map['details'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail>(
              map['details'],
              (value) =>
                  V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail
                      .fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
