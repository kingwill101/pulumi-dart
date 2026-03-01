// ignore_for_file: unused_element, unnecessary_cast

import 'workspace_custom_boolean_parameter.dart';
import 'workspace_custom_string_parameter.dart';
import 'workspace_encryption_parameter.dart';
import 'workspace_no_public_ipboolean_parameter.dart';

/// Custom Parameters used for Cluster Creation.
class WorkspaceCustomParameters {
  /// The ID of a Azure Machine Learning workspace to link with Databricks workspace
  final WorkspaceCustomStringParameter? amlWorkspaceId;
  /// The name of the Private Subnet within the Virtual Network
  final WorkspaceCustomStringParameter? customPrivateSubnetName;
  /// The name of a Public Subnet within the Virtual Network
  final WorkspaceCustomStringParameter? customPublicSubnetName;
  /// The ID of a Virtual Network where this Databricks Cluster should be created
  final WorkspaceCustomStringParameter? customVirtualNetworkId;
  /// Boolean indicating whether the public IP should be disabled. Default value is true
  final WorkspaceNoPublicIPBooleanParameter? enableNoPublicIp;
  /// Contains the encryption details for Customer-Managed Key (CMK) enabled workspace.
  final WorkspaceEncryptionParameter? encryption;
  /// Name of the outbound Load Balancer Backend Pool for Secure Cluster Connectivity (No Public IP).
  final WorkspaceCustomStringParameter? loadBalancerBackendPoolName;
  /// Resource URI of Outbound Load balancer for Secure Cluster Connectivity (No Public IP) workspace.
  final WorkspaceCustomStringParameter? loadBalancerId;
  /// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets.
  final WorkspaceCustomStringParameter? natGatewayName;
  /// Prepare the workspace for encryption. Enables the Managed Identity for managed storage account.
  final WorkspaceCustomBooleanParameter? prepareEncryption;
  /// Name of the Public IP for No Public IP workspace with managed vNet.
  final WorkspaceCustomStringParameter? publicIpName;
  /// A boolean indicating whether or not the DBFS root file system will be enabled with secondary layer of encryption with platform managed keys for data at rest.
  final WorkspaceCustomBooleanParameter? requireInfrastructureEncryption;
  /// Default DBFS storage account name.
  final WorkspaceCustomStringParameter? storageAccountName;
  /// Storage account SKU name, ex: Standard_GRS, Standard_LRS. Refer https://aka.ms/storageskus for valid inputs.
  final WorkspaceCustomStringParameter? storageAccountSkuName;
  /// Address prefix for Managed virtual network. Default value for this input is 10.139.
  final WorkspaceCustomStringParameter? vnetAddressPrefix;

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
      'amlWorkspaceId': ?amlWorkspaceId == null ? null : amlWorkspaceId!.toMap(),
      'customPrivateSubnetName': ?customPrivateSubnetName == null ? null : customPrivateSubnetName!.toMap(),
      'customPublicSubnetName': ?customPublicSubnetName == null ? null : customPublicSubnetName!.toMap(),
      'customVirtualNetworkId': ?customVirtualNetworkId == null ? null : customVirtualNetworkId!.toMap(),
      'enableNoPublicIp': ?enableNoPublicIp == null ? null : enableNoPublicIp!.toMap(),
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'loadBalancerBackendPoolName': ?loadBalancerBackendPoolName == null ? null : loadBalancerBackendPoolName!.toMap(),
      'loadBalancerId': ?loadBalancerId == null ? null : loadBalancerId!.toMap(),
      'natGatewayName': ?natGatewayName == null ? null : natGatewayName!.toMap(),
      'prepareEncryption': ?prepareEncryption == null ? null : prepareEncryption!.toMap(),
      'publicIpName': ?publicIpName == null ? null : publicIpName!.toMap(),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption == null ? null : requireInfrastructureEncryption!.toMap(),
      'storageAccountName': ?storageAccountName == null ? null : storageAccountName!.toMap(),
      'storageAccountSkuName': ?storageAccountSkuName == null ? null : storageAccountSkuName!.toMap(),
      'vnetAddressPrefix': ?vnetAddressPrefix == null ? null : vnetAddressPrefix!.toMap(),
    };
  }

  factory WorkspaceCustomParameters.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomParameters(
      amlWorkspaceId: map['amlWorkspaceId'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['amlWorkspaceId'] as Map).cast<String, dynamic>()),
      customPrivateSubnetName: map['customPrivateSubnetName'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['customPrivateSubnetName'] as Map).cast<String, dynamic>()),
      customPublicSubnetName: map['customPublicSubnetName'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['customPublicSubnetName'] as Map).cast<String, dynamic>()),
      customVirtualNetworkId: map['customVirtualNetworkId'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['customVirtualNetworkId'] as Map).cast<String, dynamic>()),
      enableNoPublicIp: map['enableNoPublicIp'] == null ? null : WorkspaceNoPublicIPBooleanParameter.fromMap((map['enableNoPublicIp'] as Map).cast<String, dynamic>()),
      encryption: map['encryption'] == null ? null : WorkspaceEncryptionParameter.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      loadBalancerBackendPoolName: map['loadBalancerBackendPoolName'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['loadBalancerBackendPoolName'] as Map).cast<String, dynamic>()),
      loadBalancerId: map['loadBalancerId'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['loadBalancerId'] as Map).cast<String, dynamic>()),
      natGatewayName: map['natGatewayName'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['natGatewayName'] as Map).cast<String, dynamic>()),
      prepareEncryption: map['prepareEncryption'] == null ? null : WorkspaceCustomBooleanParameter.fromMap((map['prepareEncryption'] as Map).cast<String, dynamic>()),
      publicIpName: map['publicIpName'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['publicIpName'] as Map).cast<String, dynamic>()),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : WorkspaceCustomBooleanParameter.fromMap((map['requireInfrastructureEncryption'] as Map).cast<String, dynamic>()),
      storageAccountName: map['storageAccountName'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['storageAccountName'] as Map).cast<String, dynamic>()),
      storageAccountSkuName: map['storageAccountSkuName'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['storageAccountSkuName'] as Map).cast<String, dynamic>()),
      vnetAddressPrefix: map['vnetAddressPrefix'] == null ? null : WorkspaceCustomStringParameter.fromMap((map['vnetAddressPrefix'] as Map).cast<String, dynamic>()),
    );
  }
}

