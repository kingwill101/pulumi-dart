// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_route_policy_information.dart';
import 'import_route_policy_information.dart';
import 'layer2_configuration.dart';
import 'network_to_network_interconnect_properties_option_blayer3_configuration.dart';
import 'npb_static_route_configuration.dart';

/// {@template pulumi_managednetworkfabric_network_to_network_interconnect_args_doc}
/// The set of arguments for NetworkToNetworkInterconnect.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_to_network_interconnect_args_doc}
class NetworkToNetworkInterconnectArgs {
  /// Egress Acl. ARM resource ID of Access Control Lists.
  final pulumi.Input<String>? egressAclId;
  /// Export Route Policy configuration.
  final pulumi.Input<ExportRoutePolicyInformation>? exportRoutePolicy;
  /// Import Route Policy configuration.
  final pulumi.Input<ImportRoutePolicyInformation>? importRoutePolicy;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  final pulumi.Input<String>? ingressAclId;
  /// Configuration to use NNI for Infrastructure Management. Example: True/False.
  final pulumi.Input<String>? isManagementType;
  /// Common properties for Layer2 Configuration.
  final pulumi.Input<Layer2Configuration>? layer2Configuration;
  /// Name of the Network Fabric.
  final pulumi.Input<String> networkFabricName;
  /// Name of the Network to Network Interconnect.
  final pulumi.Input<String>? networkToNetworkInterconnectName;
  /// Type of NNI used. Example: CE | NPB
  final pulumi.Input<String>? nniType;
  /// NPB Static Route Configuration properties.
  final pulumi.Input<NpbStaticRouteConfiguration>? npbStaticRouteConfiguration;
  /// Common properties for Layer3Configuration.
  final pulumi.Input<NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration>? optionBLayer3Configuration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Based on this option layer3 parameters are mandatory. Example: True/False
  final pulumi.Input<String> useOptionB;

  /// Creates a new [NetworkToNetworkInterconnectArgs].
  /// [egressAclId] Egress Acl. ARM resource ID of Access Control Lists.
  /// [exportRoutePolicy] Export Route Policy configuration.
  /// [importRoutePolicy] Import Route Policy configuration.
  /// [ingressAclId] Ingress Acl. ARM resource ID of Access Control Lists.
  /// [isManagementType] Configuration to use NNI for Infrastructure Management. Example: True/False.
  /// [layer2Configuration] Common properties for Layer2 Configuration.
  /// [networkFabricName] Name of the Network Fabric.
  /// [networkToNetworkInterconnectName] Name of the Network to Network Interconnect.
  /// [nniType] Type of NNI used. Example: CE | NPB
  /// [npbStaticRouteConfiguration] NPB Static Route Configuration properties.
  /// [optionBLayer3Configuration] Common properties for Layer3Configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [useOptionB] Based on this option layer3 parameters are mandatory. Example: True/False
  const NetworkToNetworkInterconnectArgs({
    this.egressAclId,
    this.exportRoutePolicy,
    this.importRoutePolicy,
    this.ingressAclId,
    this.isManagementType,
    this.layer2Configuration,
    required this.networkFabricName,
    this.networkToNetworkInterconnectName,
    this.nniType,
    this.npbStaticRouteConfiguration,
    this.optionBLayer3Configuration,
    required this.resourceGroupName,
    required this.useOptionB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressAclId': ?egressAclId,
      'exportRoutePolicy': ?pulumi.Input.mapOptionalInputValue<ExportRoutePolicyInformation, Map<String, dynamic>>(exportRoutePolicy, (value) => value.toMap()),
      'importRoutePolicy': ?pulumi.Input.mapOptionalInputValue<ImportRoutePolicyInformation, Map<String, dynamic>>(importRoutePolicy, (value) => value.toMap()),
      'ingressAclId': ?ingressAclId,
      'isManagementType': ?isManagementType,
      'layer2Configuration': ?pulumi.Input.mapOptionalInputValue<Layer2Configuration, Map<String, dynamic>>(layer2Configuration, (value) => value.toMap()),
      'networkFabricName': networkFabricName,
      'networkToNetworkInterconnectName': ?networkToNetworkInterconnectName,
      'nniType': ?nniType,
      'npbStaticRouteConfiguration': ?pulumi.Input.mapOptionalInputValue<NpbStaticRouteConfiguration, Map<String, dynamic>>(npbStaticRouteConfiguration, (value) => value.toMap()),
      'optionBLayer3Configuration': ?pulumi.Input.mapOptionalInputValue<NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration, Map<String, dynamic>>(optionBLayer3Configuration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'useOptionB': useOptionB,
    };
  }

  factory NetworkToNetworkInterconnectArgs.fromMap(Map<String, dynamic> map) {
    return NetworkToNetworkInterconnectArgs(
      egressAclId: (() { final guardedValue = map['egressAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportRoutePolicy: (() { final guardedValue = map['exportRoutePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportRoutePolicyInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importRoutePolicy: (() { final guardedValue = map['importRoutePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImportRoutePolicyInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingressAclId: (() { final guardedValue = map['ingressAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isManagementType: (() { final guardedValue = map['isManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layer2Configuration: (() { final guardedValue = map['layer2Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Layer2Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkFabricName: pulumi.Input.fromValue(map['networkFabricName'] as String),
      networkToNetworkInterconnectName: (() { final guardedValue = map['networkToNetworkInterconnectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nniType: (() { final guardedValue = map['nniType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      npbStaticRouteConfiguration: (() { final guardedValue = map['npbStaticRouteConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NpbStaticRouteConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      optionBLayer3Configuration: (() { final guardedValue = map['optionBLayer3Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      useOptionB: pulumi.Input.fromValue(map['useOptionB'] as String),
    );
  }
}

