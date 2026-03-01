// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

class OrchestratorIdentity {
  /// The type of identity used for orchestrator cluster. Type 'SystemAssigned' will use an implicitly created identity orchestrator clusters
  final ResourceIdentityType? type;

  /// Creates a new [OrchestratorIdentity].
  /// [type] The type of identity used for orchestrator cluster. Type 'SystemAssigned' will use an implicitly created identity orchestrator clusters
  OrchestratorIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory OrchestratorIdentity.fromMap(Map<String, dynamic> map) {
    return OrchestratorIdentity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
    );
  }
}

