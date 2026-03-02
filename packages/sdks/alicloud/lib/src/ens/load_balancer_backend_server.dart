// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerBackendServer {
  /// IP address of the backend server  Example value: 192.168.0.5.
  final pulumi.Input<String>? ip;
  /// Port used by the backend server.
  final pulumi.Input<int>? port;
  /// Backend server instance ID  Example value: i-5vb5h5njxiuhn48a * * * *.
  final pulumi.Input<String> serverId;
  /// Backend server type  Example value: ens.
  final pulumi.Input<String>? type;
  /// Weight of the backend server  Example value: 100.
  final pulumi.Input<int>? weight;

  /// Creates a new [LoadBalancerBackendServer].
  /// [ip] IP address of the backend server  Example value: 192.168.0.5.
  /// [port] Port used by the backend server.
  /// [serverId] Backend server instance ID  Example value: i-5vb5h5njxiuhn48a * * * *.
  /// [type] Backend server type  Example value: ens.
  /// [weight] Weight of the backend server  Example value: 100.
  LoadBalancerBackendServer({
    this.ip,
    this.port,
    required this.serverId,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'port': ?port,
      'serverId': serverId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory LoadBalancerBackendServer.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendServer(
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      serverId: (map['serverId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

