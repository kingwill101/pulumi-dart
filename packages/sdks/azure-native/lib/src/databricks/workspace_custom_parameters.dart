// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_custom_boolean_parameter.dart';
import 'workspace_custom_string_parameter.dart';
import 'workspace_encryption_parameter.dart';
import 'workspace_no_public_ipboolean_parameter.dart';

/// Custom Parameters used for Workspace Creation. Not allowed in Serverless ComputeMode workspace.
class WorkspaceCustomParameters {
  /// The ID of a Azure Machine Learning workspace to link with Databricks workspace. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? amlWorkspaceId;
  /// The name of the Private Subnet within the Virtual Network. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? customPrivateSubnetName;
  /// The name of a Public Subnet within the Virtual Network. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? customPublicSubnetName;
  /// The ID of a Virtual Network where this Databricks Cluster should be created. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? customVirtualNetworkId;
  /// Boolean indicating whether the public IP should be disabled. Default value is true. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceNoPublicIPBooleanParameter?>? enableNoPublicIp;
  /// Contains the encryption details for Customer-Managed Key (CMK) enabled workspace.Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceEncryptionParameter?>? encryption;
  /// Name of the outbound Load Balancer Backend Pool for Secure Cluster Connectivity (No Public IP). Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? loadBalancerBackendPoolName;
  /// Resource URI of Outbound Load balancer for Secure Cluster Connectivity (No Public IP) workspace. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? loadBalancerId;
  /// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? natGatewayName;
  /// Prepare the workspace for encryption. Enables the Managed Identity for managed storage account. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomBooleanParameter?>? prepareEncryption;
  /// Name of the Public IP for No Public IP workspace with managed vNet. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? publicIpName;
  /// A boolean indicating whether or not the DBFS root file system will be enabled with secondary layer of encryption with platform managed keys for data at rest. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomBooleanParameter?>? requireInfrastructureEncryption;
  /// Default DBFS storage account name. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? storageAccountName;
  /// Storage account SKU name, ex: Standard_GRS, Standard_LRS. Refer https://aka.ms/storageskus for valid inputs. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? storageAccountSkuName;
  /// Address prefix for Managed virtual network. Default value for this input is 10.139. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<WorkspaceCustomStringParameter?>? vnetAddressPrefix;

  /// Creates a new [WorkspaceCustomParameters].
  /// [amlWorkspaceId] The ID of a Azure Machine Learning workspace to link with Databricks workspace. Not allowed in Serverless ComputeMode workspace.
  /// [customPrivateSubnetName] The name of the Private Subnet within the Virtual Network. Not allowed in Serverless ComputeMode workspace.
  /// [customPublicSubnetName] The name of a Public Subnet within the Virtual Network. Not allowed in Serverless ComputeMode workspace.
  /// [customVirtualNetworkId] The ID of a Virtual Network where this Databricks Cluster should be created. Not allowed in Serverless ComputeMode workspace.
  /// [enableNoPublicIp] Boolean indicating whether the public IP should be disabled. Default value is true. Not allowed in Serverless ComputeMode workspace.
  /// [encryption] Contains the encryption details for Customer-Managed Key (CMK) enabled workspace.Not allowed in Serverless ComputeMode workspace.
  /// [loadBalancerBackendPoolName] Name of the outbound Load Balancer Backend Pool for Secure Cluster Connectivity (No Public IP). Not allowed in Serverless ComputeMode workspace.
  /// [loadBalancerId] Resource URI of Outbound Load balancer for Secure Cluster Connectivity (No Public IP) workspace. Not allowed in Serverless ComputeMode workspace.
  /// [natGatewayName] Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets. Not allowed in Serverless ComputeMode workspace.
  /// [prepareEncryption] Prepare the workspace for encryption. Enables the Managed Identity for managed storage account. Not allowed in Serverless ComputeMode workspace.
  /// [publicIpName] Name of the Public IP for No Public IP workspace with managed vNet. Not allowed in Serverless ComputeMode workspace.
  /// [requireInfrastructureEncryption] A boolean indicating whether or not the DBFS root file system will be enabled with secondary layer of encryption with platform managed keys for data at rest. Not allowed in Serverless ComputeMode workspace.
  /// [storageAccountName] Default DBFS storage account name. Not allowed in Serverless ComputeMode workspace.
  /// [storageAccountSkuName] Storage account SKU name, ex: Standard_GRS, Standard_LRS. Refer https://aka.ms/storageskus for valid inputs. Not allowed in Serverless ComputeMode workspace.
  /// [vnetAddressPrefix] Address prefix for Managed virtual network. Default value for this input is 10.139. Not allowed in Serverless ComputeMode workspace.
  const WorkspaceCustomParameters({
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
      amlWorkspaceId: (() { final guardedValue = map['amlWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customPrivateSubnetName: (() { final guardedValue = map['customPrivateSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customPublicSubnetName: (() { final guardedValue = map['customPublicSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customVirtualNetworkId: (() { final guardedValue = map['customVirtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableNoPublicIp: (() { final guardedValue = map['enableNoPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceNoPublicIPBooleanParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceEncryptionParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancerBackendPoolName: (() { final guardedValue = map['loadBalancerBackendPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancerId: (() { final guardedValue = map['loadBalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      natGatewayName: (() { final guardedValue = map['natGatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prepareEncryption: (() { final guardedValue = map['prepareEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomBooleanParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIpName: (() { final guardedValue = map['publicIpName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requireInfrastructureEncryption: (() { final guardedValue = map['requireInfrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomBooleanParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountSkuName: (() { final guardedValue = map['storageAccountSkuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vnetAddressPrefix: (() { final guardedValue = map['vnetAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomStringParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
