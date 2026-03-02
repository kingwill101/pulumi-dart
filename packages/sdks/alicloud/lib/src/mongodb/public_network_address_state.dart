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
  PublicNetworkAddressState({
    this.dbInstanceId,
    this.replicaSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'replicaSets': ?pulumi.Input.mapOptionalInputValue<List<PublicNetworkAddressReplicaSet>, List<Map<String, dynamic>>>(replicaSets, (value) => pulumi.Input.encodeList<PublicNetworkAddressReplicaSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PublicNetworkAddressState.fromMap(Map<String, dynamic> map) {
    return PublicNetworkAddressState(
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      replicaSets: map['replicaSets'] == null ? null : (pulumi.Input.decodeList<PublicNetworkAddressReplicaSet>(map['replicaSets']!, (value) => PublicNetworkAddressReplicaSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

