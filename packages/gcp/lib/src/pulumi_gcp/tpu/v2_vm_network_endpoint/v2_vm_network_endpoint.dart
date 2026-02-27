// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_vm_network_endpoint_access_config/v2_vm_network_endpoint_access_config.dart';

class V2VmNetworkEndpoint {
  /// (Output)
  /// The access config for the TPU worker.
  /// Structure is documented below.
  final List<V2VmNetworkEndpointAccessConfig>? accessConfigs;

  /// (Output)
  /// The internal IP address of this network endpoint.
  final String? ipAddress;

  /// (Output)
  /// The port of this network endpoint.
  final int? port;

  V2VmNetworkEndpoint({
    this.accessConfigs,
    this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessConfigsValue = accessConfigs;
    if (accessConfigsValue != null) {
      map['accessConfigs'] = pulumi.Input.encodeList<
          V2VmNetworkEndpointAccessConfig,
          Map<String, dynamic>>(accessConfigsValue, (value) => value.toMap());
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory V2VmNetworkEndpoint.fromMap(Map<String, dynamic> map) {
    return V2VmNetworkEndpoint(
      accessConfigs: map['accessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<V2VmNetworkEndpointAccessConfig>(
              map['accessConfigs'],
              (value) => V2VmNetworkEndpointAccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
