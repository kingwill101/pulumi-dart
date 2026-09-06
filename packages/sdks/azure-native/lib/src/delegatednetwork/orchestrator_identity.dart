// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

class OrchestratorIdentity {
  /// The type of identity used for orchestrator cluster. Type 'SystemAssigned' will use an implicitly created identity orchestrator clusters
  final pulumi.Input<ResourceIdentityType?>? type;

  /// Creates a new [OrchestratorIdentity].
  /// [type] The type of identity used for orchestrator cluster. Type 'SystemAssigned' will use an implicitly created identity orchestrator clusters
  const OrchestratorIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(type, (value) => value.wireValue),
    };
  }

  factory OrchestratorIdentity.fromMap(Map<String, dynamic> map) {
    return OrchestratorIdentity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdentityType.fromValue(guardedValue as String)); })(),
    );
  }
}
