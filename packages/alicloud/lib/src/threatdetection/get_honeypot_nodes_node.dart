// ignore_for_file: unused_element, unnecessary_cast


class GetHoneypotNodesNode {
  /// Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  final bool allowHoneypotAccessInternet;
  /// Number of probes available.
  final int availableProbeNum;
  final String createTime;
  /// The ID of the Honeypot management node.
  final String id;
  /// Honeypot management node id.
  final String nodeId;
  /// The name of the management node.
  final String nodeName;
  /// Release the collection of network segments.
  final List<String> securityGroupProbeIpLists;
  final int status;

  /// Creates a new [GetHoneypotNodesNode].
  /// [allowHoneypotAccessInternet] Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  /// [availableProbeNum] Number of probes available.
  /// [createTime] Required.
  /// [id] The ID of the Honeypot management node.
  /// [nodeId] Honeypot management node id.
  /// [nodeName] The name of the management node.
  /// [securityGroupProbeIpLists] Release the collection of network segments.
  /// [status] Required.
  GetHoneypotNodesNode({
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
      allowHoneypotAccessInternet: map['allowHoneypotAccessInternet'] as bool,
      availableProbeNum: map['availableProbeNum'] as int,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      nodeId: map['nodeId'] as String,
      nodeName: map['nodeName'] as String,
      securityGroupProbeIpLists: (map['securityGroupProbeIpLists'] as List).cast<String>(),
      status: map['status'] as int,
    );
  }
}

