// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_baremetalsolution_v2_logical_interface_response.dart';
import 'network_address_response.dart';

/// Configuration parameters for a new instance.
class InstanceConfigResponse {
  /// If true networks can be from different projects of the same vendor account.
  final bool accountNetworksEnabled;

  /// Client network address. Filled if InstanceConfig.multivlan_config is false.
  final NetworkAddressResponse clientNetwork;

  /// Whether the instance should be provisioned with Hyperthreading enabled.
  final bool hyperthreading;

  /// Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  final String instanceType;

  /// List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. Filled if InstanceConfig.multivlan_config is true.
  final List<GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse>
      logicalInterfaces;

  /// The name of the instance config.
  final String name;

  /// The type of network configuration on the instance.
  final String networkConfig;

  /// Server network template name. Filled if InstanceConfig.multivlan_config is true.
  final String networkTemplate;

  /// OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  final String osImage;

  /// Private network address, if any. Filled if InstanceConfig.multivlan_config is false.
  final NetworkAddressResponse privateNetwork;

  /// Optional. List of names of ssh keys used to provision the instance.
  final List<String> sshKeyNames;

  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final String userNote;

  InstanceConfigResponse({
    required this.accountNetworksEnabled,
    required this.clientNetwork,
    required this.hyperthreading,
    required this.instanceType,
    required this.logicalInterfaces,
    required this.name,
    required this.networkConfig,
    required this.networkTemplate,
    required this.osImage,
    required this.privateNetwork,
    required this.sshKeyNames,
    required this.userNote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountNetworksEnabled'] = accountNetworksEnabled;
    map['clientNetwork'] = clientNetwork.toMap();
    map['hyperthreading'] = hyperthreading;
    map['instanceType'] = instanceType;
    map['logicalInterfaces'] = Input.encodeList<
        GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse,
        Map<String, dynamic>>(logicalInterfaces, (value) => value.toMap());
    map['name'] = name;
    map['networkConfig'] = networkConfig;
    map['networkTemplate'] = networkTemplate;
    map['osImage'] = osImage;
    map['privateNetwork'] = privateNetwork.toMap();
    map['sshKeyNames'] = sshKeyNames;
    map['userNote'] = userNote;
    return map;
  }

  factory InstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return InstanceConfigResponse(
      accountNetworksEnabled: map['accountNetworksEnabled'] as bool,
      clientNetwork: NetworkAddressResponse.fromMap(
          (map['clientNetwork'] as Map).cast<String, dynamic>()),
      hyperthreading: map['hyperthreading'] as bool,
      instanceType: map['instanceType'] as String,
      logicalInterfaces: Input.decodeList<
              GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse>(
          map['logicalInterfaces'],
          (value) =>
              GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkConfig: map['networkConfig'] as String,
      networkTemplate: map['networkTemplate'] as String,
      osImage: map['osImage'] as String,
      privateNetwork: NetworkAddressResponse.fromMap(
          (map['privateNetwork'] as Map).cast<String, dynamic>()),
      sshKeyNames: (map['sshKeyNames'] as List).cast<String>(),
      userNote: map['userNote'] as String,
    );
  }
}
