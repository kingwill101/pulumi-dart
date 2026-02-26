// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMemcacheNode {
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final String host;

  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final String nodeId;

  /// The port number of the Memcached server on this node.
  final int port;

  /// Current state of the Memcached node.
  final String state;

  /// Location (GCP Zone) for the Memcached node.
  final String zone;

  GetInstanceMemcacheNode({
    required this.host,
    required this.nodeId,
    required this.port,
    required this.state,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['nodeId'] = nodeId;
    map['port'] = port;
    map['state'] = state;
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceMemcacheNode.fromMap(Map<String, dynamic> map) {
    return GetInstanceMemcacheNode(
      host: map['host'] as String,
      nodeId: map['nodeId'] as String,
      port: map['port'] as int,
      state: map['state'] as String,
      zone: map['zone'] as String,
    );
  }
}
