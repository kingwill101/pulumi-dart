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
  const WorkspaceCustomParametersResponse({
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
      amlWorkspaceId: (() { final guardedValue = map['amlWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customPrivateSubnetName: (() { final guardedValue = map['customPrivateSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customPublicSubnetName: (() { final guardedValue = map['customPublicSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customVirtualNetworkId: (() { final guardedValue = map['customVirtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableNoPublicIp: (() { final guardedValue = map['enableNoPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceNoPublicIPBooleanParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceEncryptionParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancerBackendPoolName: (() { final guardedValue = map['loadBalancerBackendPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancerId: (() { final guardedValue = map['loadBalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      natGatewayName: (() { final guardedValue = map['natGatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prepareEncryption: (() { final guardedValue = map['prepareEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomBooleanParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIpName: (() { final guardedValue = map['publicIpName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requireInfrastructureEncryption: (() { final guardedValue = map['requireInfrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomBooleanParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceTags: pulumi.Input.fromValue(WorkspaceCustomObjectParameterResponse.fromMap((map['resourceTags']! as Map).cast<String, dynamic>())),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountSkuName: (() { final guardedValue = map['storageAccountSkuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vnetAddressPrefix: (() { final guardedValue = map['vnetAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

