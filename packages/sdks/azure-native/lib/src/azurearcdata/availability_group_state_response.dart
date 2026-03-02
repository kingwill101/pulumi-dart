// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications of the availability group state
class AvailabilityGroupStateResponse {
  /// Current Always On availability groups role of the availability group replica.
  final pulumi.Input<String> availabilityGroupReplicaRole;
  /// Whether a secondary replica is currently connected to the primary replica.
  final pulumi.Input<String> connectedStateDescription;
  /// Text description of the last connection error of the availability group replica.
  final pulumi.Input<String> lastConnectErrorDescription;
  /// Date and time timestamp indicating when the last connect error occurred.
  final pulumi.Input<String> lastConnectErrorTimestamp;
  /// Current operational state of the availability group replica
  final pulumi.Input<String> operationalStateDescription;
  /// Recovery health of the availability group replica.
  final pulumi.Input<String> recoveryHealthDescription;
  /// Reflects a rollup of the database synchronization state (synchronization_state) of all joined availability databases (also known as replicas) and the availability mode of the replica (synchronous-commit or asynchronous-commit mode). The rollup will reflect the least healthy accumulated state the databases on the replica.
  final pulumi.Input<String> synchronizationHealthDescription;

  /// Creates a new [AvailabilityGroupStateResponse].
  /// [availabilityGroupReplicaRole] Current Always On availability groups role of the availability group replica.
  /// [connectedStateDescription] Whether a secondary replica is currently connected to the primary replica.
  /// [lastConnectErrorDescription] Text description of the last connection error of the availability group replica.
  /// [lastConnectErrorTimestamp] Date and time timestamp indicating when the last connect error occurred.
  /// [operationalStateDescription] Current operational state of the availability group replica
  /// [recoveryHealthDescription] Recovery health of the availability group replica.
  /// [synchronizationHealthDescription] Reflects a rollup of the database synchronization state (synchronization_state) of all joined availability databases (also known as replicas) and the availability mode of the replica (synchronous-commit or asynchronous-commit mode). The rollup will reflect the least healthy accumulated state the databases on the replica.
  AvailabilityGroupStateResponse({
    required this.availabilityGroupReplicaRole,
    required this.connectedStateDescription,
    required this.lastConnectErrorDescription,
    required this.lastConnectErrorTimestamp,
    required this.operationalStateDescription,
    required this.recoveryHealthDescription,
    required this.synchronizationHealthDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupReplicaRole': availabilityGroupReplicaRole,
      'connectedStateDescription': connectedStateDescription,
      'lastConnectErrorDescription': lastConnectErrorDescription,
      'lastConnectErrorTimestamp': lastConnectErrorTimestamp,
      'operationalStateDescription': operationalStateDescription,
      'recoveryHealthDescription': recoveryHealthDescription,
      'synchronizationHealthDescription': synchronizationHealthDescription,
    };
  }

  factory AvailabilityGroupStateResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupStateResponse(
      availabilityGroupReplicaRole: (map['availabilityGroupReplicaRole'] as String).input(),
      connectedStateDescription: (map['connectedStateDescription'] as String).input(),
      lastConnectErrorDescription: (map['lastConnectErrorDescription'] as String).input(),
      lastConnectErrorTimestamp: (map['lastConnectErrorTimestamp'] as String).input(),
      operationalStateDescription: (map['operationalStateDescription'] as String).input(),
      recoveryHealthDescription: (map['recoveryHealthDescription'] as String).input(),
      synchronizationHealthDescription: (map['synchronizationHealthDescription'] as String).input(),
    );
  }
}

