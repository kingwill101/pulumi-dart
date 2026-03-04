// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratorIdentityResponse {
  /// The principal id of the system assigned identity which is used by orchestrator.
  final pulumi.Input<String> principalId;

  /// The tenant id of the system assigned identity which is used by orchestrator.
  final pulumi.Input<String> tenantId;

  /// The type of identity used for orchestrator cluster. Type 'SystemAssigned' will use an implicitly created identity orchestrator clusters
  final pulumi.Input<String>? type;

  /// Creates a new [OrchestratorIdentityResponse].
  /// [principalId] The principal id of the system assigned identity which is used by orchestrator.
  /// [tenantId] The tenant id of the system assigned identity which is used by orchestrator.
  /// [type] The type of identity used for orchestrator cluster. Type 'SystemAssigned' will use an implicitly created identity orchestrator clusters
  OrchestratorIdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory OrchestratorIdentityResponse.fromMap(Map<String, dynamic> map) {
    return OrchestratorIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
