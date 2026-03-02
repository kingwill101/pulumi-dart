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
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

