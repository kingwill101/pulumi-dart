// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_gce_setup_network_interface_access_config.dart';

class InstanceGceSetupNetworkInterface {
  /// Optional. An array of configurations for this interface. Currently, only one access
  /// config, ONE_TO_ONE_NAT, is supported. If no accessConfigs specified, the
  /// instance will have an external internet access through an ephemeral
  /// external IP address.
  /// Structure is documented below.
  final List<InstanceGceSetupNetworkInterfaceAccessConfig>? accessConfigs;
  /// Optional. The name of the VPC that this VM instance is in.
  final String? network;
  /// Optional. The type of vNIC to be used on this interface. This
  /// may be gVNIC or VirtioNet.
  /// Possible values are: `VIRTIO_NET`, `GVNIC`.
  final String? nicType;
  /// Optional. The name of the subnet that this VM instance is in.
  final String? subnet;

  /// Creates a new [InstanceGceSetupNetworkInterface].
  /// [accessConfigs] Optional. An array of configurations for this interface. Currently, only one access
  /// [network] Optional. The name of the VPC that this VM instance is in.
  /// [nicType] Optional. The type of vNIC to be used on this interface. This
  /// [subnet] Optional. The name of the subnet that this VM instance is in.
  InstanceGceSetupNetworkInterface({
    this.accessConfigs,
    this.network,
    this.nicType,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?accessConfigs == null ? null : pulumi.Input.encodeList<InstanceGceSetupNetworkInterfaceAccessConfig, Map<String, dynamic>>(accessConfigs!, (value) => value.toMap()),
      'network': ?network,
      'nicType': ?nicType,
      'subnet': ?subnet,
    };
  }

  factory InstanceGceSetupNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupNetworkInterface(
      accessConfigs: map['accessConfigs'] == null ? null : pulumi.Input.decodeList<InstanceGceSetupNetworkInterfaceAccessConfig>(map['accessConfigs'], (value) => InstanceGceSetupNetworkInterfaceAccessConfig.fromMap((value as Map).cast<String, dynamic>())),
      network: map['network'] == null ? null : map['network'] as String,
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
    );
  }
}

