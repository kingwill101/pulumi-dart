// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'supercomputer_identities_response.dart';
import 'with_mobo_broker_resources_response.dart';

/// Supercomputer properties
class SupercomputerPropertiesResponse {
  /// Whether or not to use a customer managed key when encrypting data at rest
  final pulumi.Input<String?>? customerManagedKeys;
  /// Disk Encryption Set ID to use for Customer Managed Keys encryption. Required if Customer Managed Keys is enabled.
  final pulumi.Input<String?>? diskEncryptionSetId;
  /// Dictionary of identity properties.
  final pulumi.Input<SupercomputerIdentitiesResponse> identities;
  /// The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  final pulumi.Input<String?>? logAnalyticsClusterId;
  /// Managed-On-Behalf-Of configuration properties. This configuration exists for the resources where a resource provider manages those resources on behalf of the resource owner.
  final pulumi.Input<WithMoboBrokerResourcesResponse> managedOnBehalfOfConfiguration;
  /// The resource group for resources managed on behalf of customer.
  final pulumi.Input<String> managedResourceGroup;
  /// System Subnet ID associated with AKS apiserver. Must be delegated to Microsoft.ContainerService/managedClusters.
  /// It should have connectivity to the system subnet and nodepool subnets.
  final pulumi.Input<String?>? managementSubnetId;
  /// Network egress type provisioned for the supercomputer workloads.
  /// Defaults to LoadBalancer if not specified.
  /// If None is specified, the customer is responsible for providing outbound connectivity for Supercomputer functionality.
  final pulumi.Input<String?>? outboundType;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// System Subnet ID associated with managed NodePool for system resources.
  /// It should have connectivity to the child NodePool subnets.
  final pulumi.Input<String> subnetId;
  /// The SKU to use for the system node pool.
  final pulumi.Input<String?>? systemSku;

  /// Creates a new [SupercomputerPropertiesResponse].
  /// [customerManagedKeys] Whether or not to use a customer managed key when encrypting data at rest
  /// [diskEncryptionSetId] Disk Encryption Set ID to use for Customer Managed Keys encryption. Required if Customer Managed Keys is enabled.
  /// [identities] Dictionary of identity properties.
  /// [logAnalyticsClusterId] The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  /// [managedOnBehalfOfConfiguration] Managed-On-Behalf-Of configuration properties. This configuration exists for the resources where a resource provider manages those resources on behalf of the resource owner.
  /// [managedResourceGroup] The resource group for resources managed on behalf of customer.
  /// [managementSubnetId] System Subnet ID associated with AKS apiserver. Must be delegated to Microsoft.ContainerService/managedClusters.
  /// [outboundType] Network egress type provisioned for the supercomputer workloads.
  /// [provisioningState] The status of the last operation.
  /// [subnetId] System Subnet ID associated with managed NodePool for system resources.
  /// [systemSku] The SKU to use for the system node pool.
  SupercomputerPropertiesResponse({
    this.customerManagedKeys,
    this.diskEncryptionSetId,
    required this.identities,
    this.logAnalyticsClusterId,
    required this.managedOnBehalfOfConfiguration,
    required this.managedResourceGroup,
    this.managementSubnetId,
    pulumi.Input<String?>? outboundType,
    required this.provisioningState,
    required this.subnetId,
    this.systemSku,
  }) : outboundType = outboundType ?? pulumi.Input.fromValue('LoadBalancer');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeys': ?customerManagedKeys,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'identities': pulumi.Input.mapInputValue<SupercomputerIdentitiesResponse, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'logAnalyticsClusterId': ?logAnalyticsClusterId,
      'managedOnBehalfOfConfiguration': pulumi.Input.mapInputValue<WithMoboBrokerResourcesResponse, Map<String, dynamic>>(managedOnBehalfOfConfiguration, (value) => value.toMap()),
      'managedResourceGroup': managedResourceGroup,
      'managementSubnetId': ?managementSubnetId,
      'outboundType': ?outboundType,
      'provisioningState': provisioningState,
      'subnetId': subnetId,
      'systemSku': ?systemSku,
    };
  }

  factory SupercomputerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SupercomputerPropertiesResponse(
      customerManagedKeys: (() { final guardedValue = map['customerManagedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identities: pulumi.Input.fromValue(SupercomputerIdentitiesResponse.fromMap((map['identities']! as Map).cast<String, dynamic>())),
      logAnalyticsClusterId: (() { final guardedValue = map['logAnalyticsClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedOnBehalfOfConfiguration: pulumi.Input.fromValue(WithMoboBrokerResourcesResponse.fromMap((map['managedOnBehalfOfConfiguration']! as Map).cast<String, dynamic>())),
      managedResourceGroup: pulumi.Input.fromValue(map['managedResourceGroup'] as String),
      managementSubnetId: (() { final guardedValue = map['managementSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundType: (() { final guardedValue = map['outboundType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      systemSku: (() { final guardedValue = map['systemSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
