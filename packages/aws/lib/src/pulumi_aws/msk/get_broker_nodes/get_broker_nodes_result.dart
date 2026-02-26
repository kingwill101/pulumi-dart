// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_broker_nodes_node_info_list/get_broker_nodes_node_info_list.dart';

/// Result data returned by getBrokerNodes.
class GetBrokerNodesResult {
  final String clusterArn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetBrokerNodesNodeInfoList> nodeInfoLists;
  final String region;

  GetBrokerNodesResult({
    required this.clusterArn,
    required this.id,
    required this.nodeInfoLists,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    map['id'] = id;
    map['nodeInfoLists'] =
        Input.encodeList<GetBrokerNodesNodeInfoList, Map<String, dynamic>>(
            nodeInfoLists, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetBrokerNodesResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerNodesResult(
      clusterArn: map['clusterArn'] as String,
      id: map['id'] as String,
      nodeInfoLists: Input.decodeList<GetBrokerNodesNodeInfoList>(
          map['nodeInfoLists'],
          (value) => GetBrokerNodesNodeInfoList.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
