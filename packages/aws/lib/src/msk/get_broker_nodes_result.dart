// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_broker_nodes_node_info_list.dart';

/// Result data returned by getBrokerNodes.
class GetBrokerNodesResult {
  final String clusterArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetBrokerNodesNodeInfoList> nodeInfoLists;
  final String region;

  /// Creates a new [GetBrokerNodesResult].
  /// [clusterArn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nodeInfoLists] Required.
  /// [region] Required.
  GetBrokerNodesResult({
    required this.clusterArn,
    required this.id,
    required this.nodeInfoLists,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'id': id,
      'nodeInfoLists': pulumi.Input.encodeList<GetBrokerNodesNodeInfoList, Map<String, dynamic>>(nodeInfoLists, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetBrokerNodesResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerNodesResult(
      clusterArn: map['clusterArn'] as String,
      id: map['id'] as String,
      nodeInfoLists: pulumi.Input.decodeList<GetBrokerNodesNodeInfoList>(map['nodeInfoLists'], (value) => GetBrokerNodesNodeInfoList.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}

