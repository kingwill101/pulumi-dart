// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_pvtz_discovery_svc_port_protocol.dart';

class ApplicationPvtzDiscoverySvc {
  /// Enables the Kubernetes Service-based registration and discovery feature.
  final pulumi.Input<bool>? enable;
  /// The ID of the namespace.
  final pulumi.Input<String>? namespaceId;
  /// The port number and protocol. See `port_protocols` below.
  final pulumi.Input<List<ApplicationPvtzDiscoverySvcPortProtocol>>? portProtocols;
  /// The name of the Service.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ApplicationPvtzDiscoverySvc].
  /// [enable] Enables the Kubernetes Service-based registration and discovery feature.
  /// [namespaceId] The ID of the namespace.
  /// [portProtocols] The port number and protocol. See `port_protocols` below.
  /// [serviceName] The name of the Service.
  ApplicationPvtzDiscoverySvc({
    this.enable,
    this.namespaceId,
    this.portProtocols,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'namespaceId': ?namespaceId,
      'portProtocols': ?pulumi.Input.mapOptionalInputValue<List<ApplicationPvtzDiscoverySvcPortProtocol>, List<Map<String, dynamic>>>(portProtocols, (value) => pulumi.Input.encodeList<ApplicationPvtzDiscoverySvcPortProtocol, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceName': ?serviceName,
    };
  }

  factory ApplicationPvtzDiscoverySvc.fromMap(Map<String, dynamic> map) {
    return ApplicationPvtzDiscoverySvc(
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId'] as String).input(),
      portProtocols: map['portProtocols'] == null ? null : (pulumi.Input.decodeList<ApplicationPvtzDiscoverySvcPortProtocol>(map['portProtocols'], (value) => ApplicationPvtzDiscoverySvcPortProtocol.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
    );
  }
}

