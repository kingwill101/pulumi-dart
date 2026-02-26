// ignore_for_file: unused_element, unnecessary_cast

import 'memcache_parameters_response.dart';

class NodeResponse4 {
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final String host;

  /// The full version of memcached server running on this node. e.g. - memcached-1.5.16
  final String memcacheFullVersion;

  /// Major version of memcached server running on this node, e.g. MEMCACHE_1_5
  final String memcacheVersion;

  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final String nodeId;

  /// User defined parameters currently applied to the node.
  final MemcacheParametersResponse parameters;

  /// The port number of the Memcached server on this node.
  final int port;

  /// Current state of the Memcached node.
  final String state;

  /// Location (GCP Zone) for the Memcached node.
  final String zone;

  NodeResponse4({
    required this.host,
    required this.memcacheFullVersion,
    required this.memcacheVersion,
    required this.nodeId,
    required this.parameters,
    required this.port,
    required this.state,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['memcacheFullVersion'] = memcacheFullVersion;
    map['memcacheVersion'] = memcacheVersion;
    map['nodeId'] = nodeId;
    map['parameters'] = parameters.toMap();
    map['port'] = port;
    map['state'] = state;
    map['zone'] = zone;
    return map;
  }

  factory NodeResponse4.fromMap(Map<String, dynamic> map) {
    return NodeResponse4(
      host: map['host'] as String,
      memcacheFullVersion: map['memcacheFullVersion'] as String,
      memcacheVersion: map['memcacheVersion'] as String,
      nodeId: map['nodeId'] as String,
      parameters: MemcacheParametersResponse.fromMap(
          (map['parameters'] as Map).cast<String, dynamic>()),
      port: map['port'] as int,
      state: map['state'] as String,
      zone: map['zone'] as String,
    );
  }
}
