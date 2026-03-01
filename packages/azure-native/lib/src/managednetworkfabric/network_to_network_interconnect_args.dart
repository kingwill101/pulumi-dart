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
  NetworkToNetworkInterconnectArgs({
    String? egressAclId,
    ExportRoutePolicyInformation? exportRoutePolicy,
    ImportRoutePolicyInformation? importRoutePolicy,
    String? ingressAclId,
    String? isManagementType,
    Layer2Configuration? layer2Configuration,
    required String networkFabricName,
    String? networkToNetworkInterconnectName,
    String? nniType,
    NpbStaticRouteConfiguration? npbStaticRouteConfiguration,
    NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration? optionBLayer3Configuration,
    required String resourceGroupName,
    required String useOptionB,
  }) :
      egressAclId = pulumi.Input.asOptionalInput<String>(egressAclId),
      exportRoutePolicy = pulumi.Input.asOptionalInput<ExportRoutePolicyInformation>(exportRoutePolicy),
      importRoutePolicy = pulumi.Input.asOptionalInput<ImportRoutePolicyInformation>(importRoutePolicy),
      ingressAclId = pulumi.Input.asOptionalInput<String>(ingressAclId),
      isManagementType = pulumi.Input.asOptionalInput<String>(isManagementType),
      layer2Configuration = pulumi.Input.asOptionalInput<Layer2Configuration>(layer2Configuration),
      networkFabricName = pulumi.Input.asInput<String>(networkFabricName),
      networkToNetworkInterconnectName = pulumi.Input.asOptionalInput<String>(networkToNetworkInterconnectName),
      nniType = pulumi.Input.asOptionalInput<String>(nniType),
      npbStaticRouteConfiguration = pulumi.Input.asOptionalInput<NpbStaticRouteConfiguration>(npbStaticRouteConfiguration),
      optionBLayer3Configuration = pulumi.Input.asOptionalInput<NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration>(optionBLayer3Configuration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      useOptionB = pulumi.Input.asInput<String>(useOptionB);

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
      egressAclId: map['egressAclId'] == null ? null : map['egressAclId'] as String,
      exportRoutePolicy: map['exportRoutePolicy'] == null ? null : ExportRoutePolicyInformation.fromMap((map['exportRoutePolicy'] as Map).cast<String, dynamic>()),
      importRoutePolicy: map['importRoutePolicy'] == null ? null : ImportRoutePolicyInformation.fromMap((map['importRoutePolicy'] as Map).cast<String, dynamic>()),
      ingressAclId: map['ingressAclId'] == null ? null : map['ingressAclId'] as String,
      isManagementType: map['isManagementType'] == null ? null : map['isManagementType'] as String,
      layer2Configuration: map['layer2Configuration'] == null ? null : Layer2Configuration.fromMap((map['layer2Configuration'] as Map).cast<String, dynamic>()),
      networkFabricName: map['networkFabricName'] as String,
      networkToNetworkInterconnectName: map['networkToNetworkInterconnectName'] == null ? null : map['networkToNetworkInterconnectName'] as String,
      nniType: map['nniType'] == null ? null : map['nniType'] as String,
      npbStaticRouteConfiguration: map['npbStaticRouteConfiguration'] == null ? null : NpbStaticRouteConfiguration.fromMap((map['npbStaticRouteConfiguration'] as Map).cast<String, dynamic>()),
      optionBLayer3Configuration: map['optionBLayer3Configuration'] == null ? null : NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration.fromMap((map['optionBLayer3Configuration'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      useOptionB: map['useOptionB'] as String,
    );
  }
}

