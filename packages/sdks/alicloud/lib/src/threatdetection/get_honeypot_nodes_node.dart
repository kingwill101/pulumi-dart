// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHoneypotNodesNode {
  /// Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  final pulumi.Input<bool> allowHoneypotAccessInternet;
  /// Number of probes available.
  final pulumi.Input<int> availableProbeNum;
  final pulumi.Input<String> createTime;
  /// The ID of the Honeypot management node.
  final pulumi.Input<String> id;
  /// Honeypot management node id.
  final pulumi.Input<String> nodeId;
  /// The name of the management node.
  final pulumi.Input<String> nodeName;
  /// Release the collection of network segments.
  final pulumi.Input<List<String>> securityGroupProbeIpLists;
  final pulumi.Input<int> status;

  /// Creates a new [GetHoneypotNodesNode].
  /// [allowHoneypotAccessInternet] Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  /// [availableProbeNum] Number of probes available.
  /// [createTime] Required.
  /// [id] The ID of the Honeypot management node.
  /// [nodeId] Honeypot management node id.
  /// [nodeName] The name of the management node.
  /// [securityGroupProbeIpLists] Release the collection of network segments.
  /// [status] Required.
  const GetHoneypotNodesNode({
    required this.allowHoneypotAccessInternet,
    required this.availableProbeNum,
    required this.createTime,
    required this.id,
    required this.nodeId,
    required this.nodeName,
    required this.securityGroupProbeIpLists,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHoneypotAccessInternet': allowHoneypotAccessInternet,
      'availableProbeNum': availableProbeNum,
      'createTime': createTime,
      'id': id,
      'nodeId': nodeId,
      'nodeName': nodeName,
      'securityGroupProbeIpLists': securityGroupProbeIpLists,
      'status': status,
    };
  }

  factory GetHoneypotNodesNode.fromMap(Map<String, dynamic> map) {
    return GetHoneypotNodesNode(
      allowHoneypotAccessInternet: pulumi.Input.fromValue(map['allowHoneypotAccessInternet'] as bool),
      availableProbeNum: pulumi.Input.fromValue(map['availableProbeNum'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
      securityGroupProbeIpLists: pulumi.Input.fromValue((map['securityGroupProbeIpLists'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as int),
    );
  }
}

