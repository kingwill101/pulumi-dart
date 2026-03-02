// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_custom_boolean_parameter.dart';
import 'workspace_custom_string_parameter.dart';
import 'workspace_encryption_parameter.dart';
import 'workspace_no_public_ipboolean_parameter.dart';

/// Custom Parameters used for Cluster Creation.
class WorkspaceCustomParameters {
  /// The ID of a Azure Machine Learning workspace to link with Databricks workspace
  final pulumi.Input<WorkspaceCustomStringParameter>? amlWorkspaceId;
  /// The name of the Private Subnet within the Virtual Network
  final pulumi.Input<WorkspaceCustomStringParameter>? customPrivateSubnetName;
  /// The name of a Public Subnet within the Virtual Network
  final pulumi.Input<WorkspaceCustomStringParameter>? customPublicSubnetName;
  /// The ID of a Virtual Network where this Databricks Cluster should be created
  final pulumi.Input<WorkspaceCustomStringParameter>? customVirtualNetworkId;
  /// Boolean indicating whether the public IP should be disabled. Default value is true
  final pulumi.Input<WorkspaceNoPublicIPBooleanParameter>? enableNoPublicIp;
  /// Contains the encryption details for Customer-Managed Key (CMK) enabled workspace.
  final pulumi.Input<WorkspaceEncryptionParameter>? encryption;
  /// Name of the outbound Load Balancer Backend Pool for Secure Cluster Connectivity (No Public IP).
  final pulumi.Input<WorkspaceCustomStringParameter>? loadBalancerBackendPoolName;
  /// Resource URI of Outbound Load balancer for Secure Cluster Connectivity (No Public IP) workspace.
  final pulumi.Input<WorkspaceCustomStringParameter>? loadBalancerId;
  /// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets.
  final pulumi.Input<WorkspaceCustomStringParameter>? natGatewayName;
  /// Prepare the workspace for encryption. Enables the Managed Identity for managed storage account.
  final pulumi.Input<WorkspaceCustomBooleanParameter>? prepareEncryption;
  /// Name of the Public IP for No Public IP workspace with managed vNet.
  final pulumi.Input<WorkspaceCustomStringParameter>? publicIpName;
  /// A boolean indicating whether or not the DBFS root file system will be enabled with secondary layer of encryption with platform managed keys for data at rest.
  final pulumi.Input<WorkspaceCustomBooleanParameter>? requireInfrastructureEncryption;
  /// Default DBFS storage account name.
  final pulumi.Input<WorkspaceCustomStringParameter>? storageAccountName;
  /// Storage account SKU name, ex: Standard_GRS, Standard_LRS. Refer https://aka.ms/storageskus for valid inputs.
  final pulumi.Input<WorkspaceCustomStringParameter>? storageAccountSkuName;
  /// Address prefix for Managed virtual network. Default value for this input is 10.139.
  final pulumi.Input<WorkspaceCustomStringParameter>? vnetAddressPrefix;

  /// Creates a new [WorkspaceCustomParameters].
  /// [amlWorkspaceId] The ID of a Azure Machine Learning workspace to link with Databricks workspace
  /// [customPrivateSubnetName] The name of the Private Subnet within the Virtual Network
  /// [customPublicSubnetName] The name of a Public Subnet within the Virtual Network
  /// [customVirtualNetworkId] The ID of a Virtual Network where this Databricks Cluster should be created
  /// [enableNoPublicIp] Boolean indicating whether the public IP should be disabled. Default value is true
  /// [encryption] Contains the encryption details for Customer-Managed Key (CMK) enabled workspace.
  /// [loadBalancerBackendPoolName] Name of the outbound Load Balancer Backend Pool for Secure Cluster Connectivity (No Public IP).
  /// [loadBalancerId] Resource URI of Outbound Load balancer for Secure Cluster Connectivity (No Public IP) workspace.
  /// [natGatewayName] Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets.
  /// [prepareEncryption] Prepare the workspace for encryption. Enables the Managed Identity for managed storage account.
  /// [publicIpName] Name of the Public IP for No Public IP workspace with managed vNet.
  /// [requireInfrastructureEncryption] A boolean indicating whether or not the DBFS root file system will be enabled with secondary layer of encryption with platform managed keys for data at rest.
  /// [storageAccountName] Default DBFS storage account name.
  /// [storageAccountSkuName] Storage account SKU name, ex: Standard_GRS, Standard_LRS. Refer https://aka.ms/storageskus for valid inputs.
  /// [vnetAddressPrefix] Address prefix for Managed virtual network. Default value for this input is 10.139.
  WorkspaceCustomParameters({
    this.amlWorkspaceId,
    this.customPrivateSubnetName,
    this.customPublicSubnetName,
    this.customVirtualNetworkId,
    this.enableNoPublicIp,
    this.encryption,
    this.loadBalancerBackendPoolName,
    this.loadBalancerId,
    this.natGatewayName,
    this.prepareEncryption,
    this.publicIpName,
    this.requireInfrastructureEncryption,
    this.storageAccountName,
    this.storageAccountSkuName,
    this.vnetAddressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlWorkspaceId': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(amlWorkspaceId, (value) => value.toMap()),
      'customPrivateSubnetName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(customPrivateSubnetName, (value) => value.toMap()),
      'customPublicSubnetName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(customPublicSubnetName, (value) => value.toMap()),
      'customVirtualNetworkId': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(customVirtualNetworkId, (value) => value.toMap()),
      'enableNoPublicIp': ?pulumi.Input.mapOptionalInputValue<WorkspaceNoPublicIPBooleanParameter, Map<String, dynamic>>(enableNoPublicIp, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<WorkspaceEncryptionParameter, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'loadBalancerBackendPoolName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(loadBalancerBackendPoolName, (value) => value.toMap()),
      'loadBalancerId': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(loadBalancerId, (value) => value.toMap()),
      'natGatewayName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(natGatewayName, (value) => value.toMap()),
      'prepareEncryption': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomBooleanParameter, Map<String, dynamic>>(prepareEncryption, (value) => value.toMap()),
      'publicIpName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(publicIpName, (value) => value.toMap()),
      'requireInfrastructureEncryption': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomBooleanParameter, Map<String, dynamic>>(requireInfrastructureEncryption, (value) => value.toMap()),
      'storageAccountName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(storageAccountName, (value) => value.toMap()),
      'storageAccountSkuName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(storageAccountSkuName, (value) => value.toMap()),
      'vnetAddressPrefix': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameter, Map<String, dynamic>>(vnetAddressPrefix, (value) => value.toMap()),
    };
  }

  factory WorkspaceCustomParameters.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomParameters(
      amlWorkspaceId: map['amlWorkspaceId'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['amlWorkspaceId'] as Map).cast<String, dynamic>())).input(),
      customPrivateSubnetName: map['customPrivateSubnetName'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['customPrivateSubnetName'] as Map).cast<String, dynamic>())).input(),
      customPublicSubnetName: map['customPublicSubnetName'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['customPublicSubnetName'] as Map).cast<String, dynamic>())).input(),
      customVirtualNetworkId: map['customVirtualNetworkId'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['customVirtualNetworkId'] as Map).cast<String, dynamic>())).input(),
      enableNoPublicIp: map['enableNoPublicIp'] == null ? null : (WorkspaceNoPublicIPBooleanParameter.fromMap((map['enableNoPublicIp'] as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (WorkspaceEncryptionParameter.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      loadBalancerBackendPoolName: map['loadBalancerBackendPoolName'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['loadBalancerBackendPoolName'] as Map).cast<String, dynamic>())).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['loadBalancerId'] as Map).cast<String, dynamic>())).input(),
      natGatewayName: map['natGatewayName'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['natGatewayName'] as Map).cast<String, dynamic>())).input(),
      prepareEncryption: map['prepareEncryption'] == null ? null : (WorkspaceCustomBooleanParameter.fromMap((map['prepareEncryption'] as Map).cast<String, dynamic>())).input(),
      publicIpName: map['publicIpName'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['publicIpName'] as Map).cast<String, dynamic>())).input(),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : (WorkspaceCustomBooleanParameter.fromMap((map['requireInfrastructureEncryption'] as Map).cast<String, dynamic>())).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['storageAccountName'] as Map).cast<String, dynamic>())).input(),
      storageAccountSkuName: map['storageAccountSkuName'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['storageAccountSkuName'] as Map).cast<String, dynamic>())).input(),
      vnetAddressPrefix: map['vnetAddressPrefix'] == null ? null : (WorkspaceCustomStringParameter.fromMap((map['vnetAddressPrefix'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

