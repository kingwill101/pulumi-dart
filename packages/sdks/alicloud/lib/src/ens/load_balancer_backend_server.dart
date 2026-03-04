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
      ip: (() {
        final guardedValue = map['ip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
