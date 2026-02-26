// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../blockchain_nodes_connection_info_endpoint_info/blockchain_nodes_connection_info_endpoint_info.dart';

class BlockchainNodesConnectionInfo {
  /// (Output)
  /// The endpoint information through which to interact with a blockchain node.
  /// Structure is documented below.
  final List<BlockchainNodesConnectionInfoEndpointInfo>? endpointInfos;

  /// (Output)
  /// A service attachment that exposes a node, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  final String? serviceAttachment;

  BlockchainNodesConnectionInfo({
    this.endpointInfos,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointInfosValue = endpointInfos;
    if (endpointInfosValue != null) {
      map['endpointInfos'] = Input.encodeList<
          BlockchainNodesConnectionInfoEndpointInfo,
          Map<String, dynamic>>(endpointInfosValue, (value) => value.toMap());
    }
    final serviceAttachmentValue = serviceAttachment;
    if (serviceAttachmentValue != null) {
      map['serviceAttachment'] = serviceAttachmentValue;
    }
    return map;
  }

  factory BlockchainNodesConnectionInfo.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesConnectionInfo(
      endpointInfos: map['endpointInfos'] == null
          ? null
          : Input.decodeList<BlockchainNodesConnectionInfoEndpointInfo>(
              map['endpointInfos'],
              (value) => BlockchainNodesConnectionInfoEndpointInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
