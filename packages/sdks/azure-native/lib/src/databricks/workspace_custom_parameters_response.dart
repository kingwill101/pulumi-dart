// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_custom_boolean_parameter_response.dart';
import 'workspace_custom_object_parameter_response.dart';
import 'workspace_custom_string_parameter_response.dart';
import 'workspace_encryption_parameter_response.dart';
import 'workspace_no_public_ipboolean_parameter_response.dart';

/// Custom Parameters used for Cluster Creation.
class WorkspaceCustomParametersResponse {
  /// The ID of a Azure Machine Learning workspace to link with Databricks workspace
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? amlWorkspaceId;
  /// The name of the Private Subnet within the Virtual Network
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? customPrivateSubnetName;
  /// The name of a Public Subnet within the Virtual Network
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? customPublicSubnetName;
  /// The ID of a Virtual Network where this Databricks Cluster should be created
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? customVirtualNetworkId;
  /// Boolean indicating whether the public IP should be disabled. Default value is true
  final pulumi.Input<WorkspaceNoPublicIPBooleanParameterResponse>? enableNoPublicIp;
  /// Contains the encryption details for Customer-Managed Key (CMK) enabled workspace.
  final pulumi.Input<WorkspaceEncryptionParameterResponse>? encryption;
  /// Name of the outbound Load Balancer Backend Pool for Secure Cluster Connectivity (No Public IP).
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? loadBalancerBackendPoolName;
  /// Resource URI of Outbound Load balancer for Secure Cluster Connectivity (No Public IP) workspace.
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? loadBalancerId;
  /// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets.
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? natGatewayName;
  /// Prepare the workspace for encryption. Enables the Managed Identity for managed storage account.
  final pulumi.Input<WorkspaceCustomBooleanParameterResponse>? prepareEncryption;
  /// Name of the Public IP for No Public IP workspace with managed vNet.
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? publicIpName;
  /// A boolean indicating whether or not the DBFS root file system will be enabled with secondary layer of encryption with platform managed keys for data at rest.
  final pulumi.Input<WorkspaceCustomBooleanParameterResponse>? requireInfrastructureEncryption;
  /// Tags applied to resources under Managed resource group. These can be updated by updating tags at workspace level.
  final pulumi.Input<WorkspaceCustomObjectParameterResponse> resourceTags;
  /// Default DBFS storage account name.
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? storageAccountName;
  /// Storage account SKU name, ex: Standard_GRS, Standard_LRS. Refer https://aka.ms/storageskus for valid inputs.
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? storageAccountSkuName;
  /// Address prefix for Managed virtual network. Default value for this input is 10.139.
  final pulumi.Input<WorkspaceCustomStringParameterResponse>? vnetAddressPrefix;

  /// Creates a new [WorkspaceCustomParametersResponse].
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
  /// [resourceTags] Tags applied to resources under Managed resource group. These can be updated by updating tags at workspace level.
  /// [storageAccountName] Default DBFS storage account name.
  /// [storageAccountSkuName] Storage account SKU name, ex: Standard_GRS, Standard_LRS. Refer https://aka.ms/storageskus for valid inputs.
  /// [vnetAddressPrefix] Address prefix for Managed virtual network. Default value for this input is 10.139.
  WorkspaceCustomParametersResponse({
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
    required this.resourceTags,
    this.storageAccountName,
    this.storageAccountSkuName,
    this.vnetAddressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlWorkspaceId': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(amlWorkspaceId, (value) => value.toMap()),
      'customPrivateSubnetName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(customPrivateSubnetName, (value) => value.toMap()),
      'customPublicSubnetName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(customPublicSubnetName, (value) => value.toMap()),
      'customVirtualNetworkId': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(customVirtualNetworkId, (value) => value.toMap()),
      'enableNoPublicIp': ?pulumi.Input.mapOptionalInputValue<WorkspaceNoPublicIPBooleanParameterResponse, Map<String, dynamic>>(enableNoPublicIp, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<WorkspaceEncryptionParameterResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'loadBalancerBackendPoolName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(loadBalancerBackendPoolName, (value) => value.toMap()),
      'loadBalancerId': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(loadBalancerId, (value) => value.toMap()),
      'natGatewayName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(natGatewayName, (value) => value.toMap()),
      'prepareEncryption': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomBooleanParameterResponse, Map<String, dynamic>>(prepareEncryption, (value) => value.toMap()),
      'publicIpName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(publicIpName, (value) => value.toMap()),
      'requireInfrastructureEncryption': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomBooleanParameterResponse, Map<String, dynamic>>(requireInfrastructureEncryption, (value) => value.toMap()),
      'resourceTags': pulumi.Input.mapInputValue<WorkspaceCustomObjectParameterResponse, Map<String, dynamic>>(resourceTags, (value) => value.toMap()),
      'storageAccountName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(storageAccountName, (value) => value.toMap()),
      'storageAccountSkuName': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(storageAccountSkuName, (value) => value.toMap()),
      'vnetAddressPrefix': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomStringParameterResponse, Map<String, dynamic>>(vnetAddressPrefix, (value) => value.toMap()),
    };
  }

  factory WorkspaceCustomParametersResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomParametersResponse(
      amlWorkspaceId: map['amlWorkspaceId'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['amlWorkspaceId']! as Map).cast<String, dynamic>())).input(),
      customPrivateSubnetName: map['customPrivateSubnetName'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['customPrivateSubnetName']! as Map).cast<String, dynamic>())).input(),
      customPublicSubnetName: map['customPublicSubnetName'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['customPublicSubnetName']! as Map).cast<String, dynamic>())).input(),
      customVirtualNetworkId: map['customVirtualNetworkId'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['customVirtualNetworkId']! as Map).cast<String, dynamic>())).input(),
      enableNoPublicIp: map['enableNoPublicIp'] == null ? null : (WorkspaceNoPublicIPBooleanParameterResponse.fromMap((map['enableNoPublicIp']! as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (WorkspaceEncryptionParameterResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      loadBalancerBackendPoolName: map['loadBalancerBackendPoolName'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['loadBalancerBackendPoolName']! as Map).cast<String, dynamic>())).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['loadBalancerId']! as Map).cast<String, dynamic>())).input(),
      natGatewayName: map['natGatewayName'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['natGatewayName']! as Map).cast<String, dynamic>())).input(),
      prepareEncryption: map['prepareEncryption'] == null ? null : (WorkspaceCustomBooleanParameterResponse.fromMap((map['prepareEncryption']! as Map).cast<String, dynamic>())).input(),
      publicIpName: map['publicIpName'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['publicIpName']! as Map).cast<String, dynamic>())).input(),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : (WorkspaceCustomBooleanParameterResponse.fromMap((map['requireInfrastructureEncryption']! as Map).cast<String, dynamic>())).input(),
      resourceTags: (WorkspaceCustomObjectParameterResponse.fromMap((map['resourceTags'] as Map).cast<String, dynamic>())).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['storageAccountName']! as Map).cast<String, dynamic>())).input(),
      storageAccountSkuName: map['storageAccountSkuName'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['storageAccountSkuName']! as Map).cast<String, dynamic>())).input(),
      vnetAddressPrefix: map['vnetAddressPrefix'] == null ? null : (WorkspaceCustomStringParameterResponse.fromMap((map['vnetAddressPrefix']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

