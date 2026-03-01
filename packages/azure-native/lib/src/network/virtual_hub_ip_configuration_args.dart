// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_network.dart';
import 'subnet_network.dart';

/// {@template pulumi_network_virtual_hub_ip_configuration_args_doc}
/// The set of arguments for VirtualHubIpConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_ip_configuration_args_doc}
class VirtualHubIpConfigurationArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the ipconfig.
  final pulumi.Input<String>? ipConfigName;
  /// Name of the Ip Configuration.
  final pulumi.Input<String>? name;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// The private IP address allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The reference to the public IP resource.
  final pulumi.Input<PublicIPAddressNetwork>? publicIPAddress;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the subnet resource.
  final pulumi.Input<SubnetNetwork>? subnet;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [VirtualHubIpConfigurationArgs].
  /// [id] Resource ID.
  /// [ipConfigName] The name of the ipconfig.
  /// [name] Name of the Ip Configuration.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [publicIPAddress] The reference to the public IP resource.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [subnet] The reference to the subnet resource.
  /// [virtualHubName] The name of the VirtualHub.
  VirtualHubIpConfigurationArgs({
    String? id,
    String? ipConfigName,
    String? name,
    String? privateIPAddress,
    String? privateIPAllocationMethod,
    PublicIPAddressNetwork? publicIPAddress,
    required String resourceGroupName,
    SubnetNetwork? subnet,
    required String virtualHubName,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      ipConfigName = pulumi.Input.asOptionalInput<String>(ipConfigName),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateIPAddress = pulumi.Input.asOptionalInput<String>(privateIPAddress),
      privateIPAllocationMethod = pulumi.Input.asOptionalInput<String>(privateIPAllocationMethod),
      publicIPAddress = pulumi.Input.asOptionalInput<PublicIPAddressNetwork>(publicIPAddress),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnet = pulumi.Input.asOptionalInput<SubnetNetwork>(subnet),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipConfigName': ?ipConfigName,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress': ?publicIPAddress,
      'resourceGroupName': resourceGroupName,
      'subnet': ?subnet,
      'virtualHubName': virtualHubName,
    };
  }

  factory VirtualHubIpConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubIpConfigurationArgs(
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigName: map['ipConfigName'] == null ? null : map['ipConfigName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : map['publicIPAddress'] as PublicIPAddressNetwork,
      resourceGroupName: map['resourceGroupName'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as SubnetNetwork,
      virtualHubName: map['virtualHubName'] as String,
    );
  }
}

