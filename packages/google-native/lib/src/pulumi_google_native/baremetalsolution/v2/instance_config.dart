// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_baremetalsolution_v2_logical_interface.dart';
import 'instance_config_network_config.dart';
import 'network_address.dart';

/// Configuration parameters for a new instance.
class InstanceConfig {
  /// If true networks can be from different projects of the same vendor account.
  final bool? accountNetworksEnabled;

  /// Client network address. Filled if InstanceConfig.multivlan_config is false.
  final NetworkAddress? clientNetwork;

  /// Whether the instance should be provisioned with Hyperthreading enabled.
  final bool? hyperthreading;

  /// A transient unique identifier to idenfity an instance within an ProvisioningConfig request.
  final String? id;

  /// Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  final String? instanceType;

  /// List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. Filled if InstanceConfig.multivlan_config is true.
  final List<GoogleCloudBaremetalsolutionV2LogicalInterface>? logicalInterfaces;

  /// The name of the instance config.
  final String? name;

  /// The type of network configuration on the instance.
  final InstanceConfigNetworkConfig? networkConfig;

  /// Server network template name. Filled if InstanceConfig.multivlan_config is true.
  final String? networkTemplate;

  /// OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  final String? osImage;

  /// Private network address, if any. Filled if InstanceConfig.multivlan_config is false.
  final NetworkAddress? privateNetwork;

  /// Optional. List of names of ssh keys used to provision the instance.
  final List<String>? sshKeyNames;

  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final String? userNote;

  InstanceConfig({
    this.accountNetworksEnabled,
    this.clientNetwork,
    this.hyperthreading,
    this.id,
    this.instanceType,
    this.logicalInterfaces,
    this.name,
    this.networkConfig,
    this.networkTemplate,
    this.osImage,
    this.privateNetwork,
    this.sshKeyNames,
    this.userNote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountNetworksEnabledValue = accountNetworksEnabled;
    if (accountNetworksEnabledValue != null) {
      map['accountNetworksEnabled'] = accountNetworksEnabledValue;
    }
    final clientNetworkValue = clientNetwork;
    if (clientNetworkValue != null) {
      map['clientNetwork'] = clientNetworkValue.toMap();
    }
    final hyperthreadingValue = hyperthreading;
    if (hyperthreadingValue != null) {
      map['hyperthreading'] = hyperthreadingValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final logicalInterfacesValue = logicalInterfaces;
    if (logicalInterfacesValue != null) {
      map['logicalInterfaces'] = pulumi.Input.encodeList<
              GoogleCloudBaremetalsolutionV2LogicalInterface,
              Map<String, dynamic>>(
          logicalInterfacesValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = networkConfigValue.value;
    }
    final networkTemplateValue = networkTemplate;
    if (networkTemplateValue != null) {
      map['networkTemplate'] = networkTemplateValue;
    }
    final osImageValue = osImage;
    if (osImageValue != null) {
      map['osImage'] = osImageValue;
    }
    final privateNetworkValue = privateNetwork;
    if (privateNetworkValue != null) {
      map['privateNetwork'] = privateNetworkValue.toMap();
    }
    final sshKeyNamesValue = sshKeyNames;
    if (sshKeyNamesValue != null) {
      map['sshKeyNames'] = sshKeyNamesValue;
    }
    final userNoteValue = userNote;
    if (userNoteValue != null) {
      map['userNote'] = userNoteValue;
    }
    return map;
  }

  factory InstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConfig(
      accountNetworksEnabled: map['accountNetworksEnabled'] == null
          ? null
          : map['accountNetworksEnabled'] as bool,
      clientNetwork: map['clientNetwork'] == null
          ? null
          : NetworkAddress.fromMap(
              (map['clientNetwork'] as Map).cast<String, dynamic>()),
      hyperthreading:
          map['hyperthreading'] == null ? null : map['hyperthreading'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      logicalInterfaces: map['logicalInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudBaremetalsolutionV2LogicalInterface>(
              map['logicalInterfaces'],
              (value) => GoogleCloudBaremetalsolutionV2LogicalInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : InstanceConfigNetworkConfig.fromValue(
              map['networkConfig'] as String),
      networkTemplate: map['networkTemplate'] == null
          ? null
          : map['networkTemplate'] as String,
      osImage: map['osImage'] == null ? null : map['osImage'] as String,
      privateNetwork: map['privateNetwork'] == null
          ? null
          : NetworkAddress.fromMap(
              (map['privateNetwork'] as Map).cast<String, dynamic>()),
      sshKeyNames: map['sshKeyNames'] == null
          ? null
          : (map['sshKeyNames'] as List).cast<String>(),
      userNote: map['userNote'] == null ? null : map['userNote'] as String,
    );
  }
}
