// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_balancer_access_log_config.dart';
import 'get_load_balancers_balancer_deletion_protection_config.dart';
import 'get_load_balancers_balancer_load_balancer_billing_config.dart';
import 'get_load_balancers_balancer_load_balancer_operation_lock.dart';
import 'get_load_balancers_balancer_modification_protection_config.dart';
import 'get_load_balancers_balancer_zone_mapping.dart';

class GetLoadBalancersBalancer {
  /// The Access Logging Configuration Structure.
  final List<GetLoadBalancersBalancerAccessLogConfig> accessLogConfigs;
  /// The method in which IP addresses are assigned.
  final String addressAllocatedMode;
  /// The type of IP address that the ALB instance uses to provide services. Valid values: `Intranet`, `Internet`.
  final String addressType;
  /// The ID of the EIP bandwidth plan which is associated with an ALB instance that uses a
  /// public IP address.
  final String bandwidthPackageId;
  /// The creation time of the resource.
  final String createTime;
  /// Remove the Protection Configuration.
  final List<GetLoadBalancersBalancerDeletionProtectionConfig> deletionProtectionConfigs;
  /// DNS Domain Name.
  final String dnsName;
  /// The ID of the Load Balancer.
  final String id;
  /// The configuration of the billing method.
  final List<GetLoadBalancersBalancerLoadBalancerBillingConfig> loadBalancerBillingConfigs;
  /// Load Balancing of the Service Status. Valid Values: `Abnormal`and `Normal`.
  final String loadBalancerBusinessStatus;
  /// Field `load_balancer_bussiness_status` has been deprecated from provider version 1.142.0. New field `load_balancer_business_status` instead.
  final String loadBalancerBussinessStatus;
  /// The edition of the ALB instance.
  final String loadBalancerEdition;
  /// The first ID of the resource.
  final String loadBalancerId;
  /// The name of the resource.
  final String loadBalancerName;
  /// The Load Balancing Operations Lock Configuration.
  final List<GetLoadBalancersBalancerLoadBalancerOperationLock> loadBalancerOperationLocks;
  /// Modify the Protection Configuration.
  final List<GetLoadBalancersBalancerModificationProtectionConfig> modificationProtectionConfigs;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The ID of the virtual private cloud (VPC) where the ALB instance is deployed.
  final String vpcId;
  /// The zones and vSwitches.
  final List<GetLoadBalancersBalancerZoneMapping> zoneMappings;

  /// Creates a new [GetLoadBalancersBalancer].
  /// [accessLogConfigs] The Access Logging Configuration Structure.
  /// [addressAllocatedMode] The method in which IP addresses are assigned.
  /// [addressType] The type of IP address that the ALB instance uses to provide services. Valid values: `Intranet`, `Internet`.
  /// [bandwidthPackageId] The ID of the EIP bandwidth plan which is associated with an ALB instance that uses a
  /// [createTime] The creation time of the resource.
  /// [deletionProtectionConfigs] Remove the Protection Configuration.
  /// [dnsName] DNS Domain Name.
  /// [id] The ID of the Load Balancer.
  /// [loadBalancerBillingConfigs] The configuration of the billing method.
  /// [loadBalancerBusinessStatus] Load Balancing of the Service Status. Valid Values: `Abnormal`and `Normal`.
  /// [loadBalancerBussinessStatus] Field `load_balancer_bussiness_status` has been deprecated from provider version 1.142.0. New field `load_balancer_business_status` instead.
  /// [loadBalancerEdition] The edition of the ALB instance.
  /// [loadBalancerId] The first ID of the resource.
  /// [loadBalancerName] The name of the resource.
  /// [loadBalancerOperationLocks] The Load Balancing Operations Lock Configuration.
  /// [modificationProtectionConfigs] Modify the Protection Configuration.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the virtual private cloud (VPC) where the ALB instance is deployed.
  /// [zoneMappings] The zones and vSwitches.
  GetLoadBalancersBalancer({
    required this.accessLogConfigs,
    required this.addressAllocatedMode,
    required this.addressType,
    required this.bandwidthPackageId,
    required this.createTime,
    required this.deletionProtectionConfigs,
    required this.dnsName,
    required this.id,
    required this.loadBalancerBillingConfigs,
    required this.loadBalancerBusinessStatus,
    required this.loadBalancerBussinessStatus,
    required this.loadBalancerEdition,
    required this.loadBalancerId,
    required this.loadBalancerName,
    required this.loadBalancerOperationLocks,
    required this.modificationProtectionConfigs,
    required this.resourceGroupId,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogConfigs': pulumi.Input.encodeList<GetLoadBalancersBalancerAccessLogConfig, Map<String, dynamic>>(accessLogConfigs, (value) => value.toMap()),
      'addressAllocatedMode': addressAllocatedMode,
      'addressType': addressType,
      'bandwidthPackageId': bandwidthPackageId,
      'createTime': createTime,
      'deletionProtectionConfigs': pulumi.Input.encodeList<GetLoadBalancersBalancerDeletionProtectionConfig, Map<String, dynamic>>(deletionProtectionConfigs, (value) => value.toMap()),
      'dnsName': dnsName,
      'id': id,
      'loadBalancerBillingConfigs': pulumi.Input.encodeList<GetLoadBalancersBalancerLoadBalancerBillingConfig, Map<String, dynamic>>(loadBalancerBillingConfigs, (value) => value.toMap()),
      'loadBalancerBusinessStatus': loadBalancerBusinessStatus,
      'loadBalancerBussinessStatus': loadBalancerBussinessStatus,
      'loadBalancerEdition': loadBalancerEdition,
      'loadBalancerId': loadBalancerId,
      'loadBalancerName': loadBalancerName,
      'loadBalancerOperationLocks': pulumi.Input.encodeList<GetLoadBalancersBalancerLoadBalancerOperationLock, Map<String, dynamic>>(loadBalancerOperationLocks, (value) => value.toMap()),
      'modificationProtectionConfigs': pulumi.Input.encodeList<GetLoadBalancersBalancerModificationProtectionConfig, Map<String, dynamic>>(modificationProtectionConfigs, (value) => value.toMap()),
      'resourceGroupId': resourceGroupId,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'zoneMappings': pulumi.Input.encodeList<GetLoadBalancersBalancerZoneMapping, Map<String, dynamic>>(zoneMappings, (value) => value.toMap()),
    };
  }

  factory GetLoadBalancersBalancer.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancer(
      accessLogConfigs: pulumi.Input.decodeList<GetLoadBalancersBalancerAccessLogConfig>(map['accessLogConfigs'], (value) => GetLoadBalancersBalancerAccessLogConfig.fromMap((value as Map).cast<String, dynamic>())),
      addressAllocatedMode: map['addressAllocatedMode'] as String,
      addressType: map['addressType'] as String,
      bandwidthPackageId: map['bandwidthPackageId'] as String,
      createTime: map['createTime'] as String,
      deletionProtectionConfigs: pulumi.Input.decodeList<GetLoadBalancersBalancerDeletionProtectionConfig>(map['deletionProtectionConfigs'], (value) => GetLoadBalancersBalancerDeletionProtectionConfig.fromMap((value as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] as String,
      id: map['id'] as String,
      loadBalancerBillingConfigs: pulumi.Input.decodeList<GetLoadBalancersBalancerLoadBalancerBillingConfig>(map['loadBalancerBillingConfigs'], (value) => GetLoadBalancersBalancerLoadBalancerBillingConfig.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerBusinessStatus: map['loadBalancerBusinessStatus'] as String,
      loadBalancerBussinessStatus: map['loadBalancerBussinessStatus'] as String,
      loadBalancerEdition: map['loadBalancerEdition'] as String,
      loadBalancerId: map['loadBalancerId'] as String,
      loadBalancerName: map['loadBalancerName'] as String,
      loadBalancerOperationLocks: pulumi.Input.decodeList<GetLoadBalancersBalancerLoadBalancerOperationLock>(map['loadBalancerOperationLocks'], (value) => GetLoadBalancersBalancerLoadBalancerOperationLock.fromMap((value as Map).cast<String, dynamic>())),
      modificationProtectionConfigs: pulumi.Input.decodeList<GetLoadBalancersBalancerModificationProtectionConfig>(map['modificationProtectionConfigs'], (value) => GetLoadBalancersBalancerModificationProtectionConfig.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      zoneMappings: pulumi.Input.decodeList<GetLoadBalancersBalancerZoneMapping>(map['zoneMappings'], (value) => GetLoadBalancersBalancerZoneMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

