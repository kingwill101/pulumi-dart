// ignore_for_file: unused_element, unnecessary_cast

class InstanceMemcacheNode {
  /// (Output)
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final String? host;

  /// (Output)
  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final String? nodeId;

  /// (Output)
  /// The port number of the Memcached server on this node.
  final int? port;

  /// (Output)
  /// Current state of the Memcached node.
  final String? state;

  /// (Output)
  /// Location (GCP Zone) for the Memcached node.
  final String? zone;

  /// Creates a new [InstanceMemcacheNode].
  /// [host] (Output)
  /// [nodeId] (Output)
  /// [port] (Output)
  /// [state] (Output)
  /// [zone] (Output)
  InstanceMemcacheNode({
    this.host,
    this.nodeId,
    this.port,
    this.state,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final nodeIdValue = nodeId;
    if (nodeIdValue != null) {
      map['nodeId'] = nodeIdValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceMemcacheNode.fromMap(Map<String, dynamic> map) {
    return InstanceMemcacheNode(
      host: map['host'] == null ? null : map['host'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      state: map['state'] == null ? null : map['state'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
