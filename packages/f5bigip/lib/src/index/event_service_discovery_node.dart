// ignore_for_file: unused_element, unnecessary_cast


class EventServiceDiscoveryNode {
  /// name of node
  final String? id;
  /// ip of nonde
  final String? ip;
  /// port
  final int? port;

  /// Creates a new [EventServiceDiscoveryNode].
  /// [id] name of node
  /// [ip] ip of nonde
  /// [port] port
  EventServiceDiscoveryNode({
    this.id,
    this.ip,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ip': ?ip,
      'port': ?port,
    };
  }

  factory EventServiceDiscoveryNode.fromMap(Map<String, dynamic> map) {
    return EventServiceDiscoveryNode(
      id: map['id'] == null ? null : map['id'] as String,
      ip: map['ip'] == null ? null : map['ip'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

