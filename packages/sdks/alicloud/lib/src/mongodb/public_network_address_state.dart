// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_network_address_replica_set.dart';

/// Input properties used for looking up and filtering PublicNetworkAddress resources.
class PublicNetworkAddressState {
  /// The instance ID.
  final pulumi.Input<String>? dbInstanceId;

  /// Replica set instance information.
  final pulumi.Input<List<PublicNetworkAddressReplicaSet>>? replicaSets;

  /// Creates a new [PublicNetworkAddressState].
  /// [dbInstanceId] The instance ID.
  /// [replicaSets] Replica set instance information.
  PublicNetworkAddressState({this.dbInstanceId, this.replicaSets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'replicaSets':
          ?pulumi.Input.mapOptionalInputValue<
            List<PublicNetworkAddressReplicaSet>,
            List<Map<String, dynamic>>
          >(
            replicaSets,
            (value) =>
                pulumi.Input.encodeList<
                  PublicNetworkAddressReplicaSet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PublicNetworkAddressState.fromMap(Map<String, dynamic> map) {
    return PublicNetworkAddressState(
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicaSets: (() {
        final guardedValue = map['replicaSets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PublicNetworkAddressReplicaSet>(
            guardedValue,
            (value) => PublicNetworkAddressReplicaSet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
