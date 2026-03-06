// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedKubernetesConnections {
  /// API Server Internet endpoint.
  final pulumi.Input<String>? apiServerInternet;
  /// API Server Intranet endpoint.
  final pulumi.Input<String>? apiServerIntranet;
  /// Master node SSH IP address.
  final pulumi.Input<String>? masterPublicIp;
  /// Service Access Domain.
  final pulumi.Input<String>? serviceDomain;

  /// Creates a new [ManagedKubernetesConnections].
  /// [apiServerInternet] API Server Internet endpoint.
  /// [apiServerIntranet] API Server Intranet endpoint.
  /// [masterPublicIp] Master node SSH IP address.
  /// [serviceDomain] Service Access Domain.
  const ManagedKubernetesConnections({
    this.apiServerInternet,
    this.apiServerIntranet,
    this.masterPublicIp,
    this.serviceDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerInternet': ?apiServerInternet,
      'apiServerIntranet': ?apiServerIntranet,
      'masterPublicIp': ?masterPublicIp,
      'serviceDomain': ?serviceDomain,
    };
  }

  factory ManagedKubernetesConnections.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesConnections(
      apiServerInternet: (() { final guardedValue = map['apiServerInternet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiServerIntranet: (() { final guardedValue = map['apiServerIntranet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterPublicIp: (() { final guardedValue = map['masterPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDomain: (() { final guardedValue = map['serviceDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

