// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'supercomputer_identities.dart';

/// Supercomputer properties
class SupercomputerProperties {
  /// Whether or not to use a customer managed key when encrypting data at rest
  final pulumi.Input<dynamic>? customerManagedKeys;
  /// Disk Encryption Set ID to use for Customer Managed Keys encryption. Required if Customer Managed Keys is enabled.
  final pulumi.Input<String?>? diskEncryptionSetId;
  /// Dictionary of identity properties.
  final pulumi.Input<SupercomputerIdentities> identities;
  /// The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  final pulumi.Input<String?>? logAnalyticsClusterId;
  /// System Subnet ID associated with AKS apiserver. Must be delegated to Microsoft.ContainerService/managedClusters.
  /// It should have connectivity to the system subnet and nodepool subnets.
  final pulumi.Input<String?>? managementSubnetId;
  /// Network egress type provisioned for the supercomputer workloads.
  /// Defaults to LoadBalancer if not specified.
  /// If None is specified, the customer is responsible for providing outbound connectivity for Supercomputer functionality.
  final pulumi.Input<dynamic>? outboundType;
  /// System Subnet ID associated with managed NodePool for system resources.
  /// It should have connectivity to the child NodePool subnets.
  final pulumi.Input<String> subnetId;
  /// The SKU to use for the system node pool.
  final pulumi.Input<dynamic>? systemSku;

  /// Creates a new [SupercomputerProperties].
  /// [customerManagedKeys] Whether or not to use a customer managed key when encrypting data at rest
  /// [diskEncryptionSetId] Disk Encryption Set ID to use for Customer Managed Keys encryption. Required if Customer Managed Keys is enabled.
  /// [identities] Dictionary of identity properties.
  /// [logAnalyticsClusterId] The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  /// [managementSubnetId] System Subnet ID associated with AKS apiserver. Must be delegated to Microsoft.ContainerService/managedClusters.
  /// [outboundType] Network egress type provisioned for the supercomputer workloads.
  /// [subnetId] System Subnet ID associated with managed NodePool for system resources.
  /// [systemSku] The SKU to use for the system node pool.
  SupercomputerProperties({
    this.customerManagedKeys,
    this.diskEncryptionSetId,
    required this.identities,
    this.logAnalyticsClusterId,
    this.managementSubnetId,
    pulumi.Input<dynamic>? outboundType,
    required this.subnetId,
    this.systemSku,
  }) : outboundType = outboundType ?? pulumi.Input.fromValue('LoadBalancer');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeys': ?customerManagedKeys,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'identities': pulumi.Input.mapInputValue<SupercomputerIdentities, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'logAnalyticsClusterId': ?logAnalyticsClusterId,
      'managementSubnetId': ?managementSubnetId,
      'outboundType': ?outboundType,
      'subnetId': subnetId,
      'systemSku': ?systemSku,
    };
  }

  factory SupercomputerProperties.fromMap(Map<String, dynamic> map) {
    return SupercomputerProperties(
      customerManagedKeys: (() { final guardedValue = map['customerManagedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identities: pulumi.Input.fromValue(SupercomputerIdentities.fromMap((map['identities']! as Map).cast<String, dynamic>())),
      logAnalyticsClusterId: (() { final guardedValue = map['logAnalyticsClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementSubnetId: (() { final guardedValue = map['managementSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundType: (() { final guardedValue = map['outboundType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      systemSku: (() { final guardedValue = map['systemSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
