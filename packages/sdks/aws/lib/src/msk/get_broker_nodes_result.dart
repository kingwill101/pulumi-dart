// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_broker_nodes_node_info_list.dart';

/// Result data returned by getBrokerNodes.
class GetBrokerNodesResult {
  final String? clusterArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetBrokerNodesNodeInfoList>? nodeInfoLists;
  final String? region;

  /// Creates a new [GetBrokerNodesResult].
  /// [clusterArn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nodeInfoLists] Optional.
  /// [region] Optional.
  const GetBrokerNodesResult({
    this.clusterArn,
    this.id,
    this.nodeInfoLists,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': ?clusterArn,
      'id': ?id,
      'nodeInfoLists': ?(() { final guardedValue = nodeInfoLists; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBrokerNodesNodeInfoList, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetBrokerNodesResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerNodesResult(
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeInfoLists: (() { final guardedValue = map['nodeInfoLists']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBrokerNodesNodeInfoList>(guardedValue, (value) => GetBrokerNodesNodeInfoList.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
