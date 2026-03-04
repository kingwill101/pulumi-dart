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
  final pulumi.Input<List<GetLoadBalancersBalancerAccessLogConfig>>
  accessLogConfigs;

  /// The method in which IP addresses are assigned.
  final pulumi.Input<String> addressAllocatedMode;

  /// The type of IP address that the ALB instance uses to provide services. Valid values: `Intranet`, `Internet`.
  final pulumi.Input<String> addressType;

  /// The ID of the EIP bandwidth plan which is associated with an ALB instance that uses a
  /// public IP address.
  final pulumi.Input<String> bandwidthPackageId;

  /// The creation time of the resource.
  final pulumi.Input<String> createTime;

  /// Remove the Protection Configuration.
  final pulumi.Input<List<GetLoadBalancersBalancerDeletionProtectionConfig>>
  deletionProtectionConfigs;

  /// DNS Domain Name.
  final pulumi.Input<String> dnsName;

  /// The ID of the Load Balancer.
  final pulumi.Input<String> id;

  /// The configuration of the billing method.
  final pulumi.Input<List<GetLoadBalancersBalancerLoadBalancerBillingConfig>>
  loadBalancerBillingConfigs;

  /// Load Balancing of the Service Status. Valid Values: `Abnormal`and `Normal`.
  final pulumi.Input<String> loadBalancerBusinessStatus;

  /// Field `load_balancer_bussiness_status` has been deprecated from provider version 1.142.0. New field `load_balancer_business_status` instead.
  final pulumi.Input<String> loadBalancerBussinessStatus;

  /// The edition of the ALB instance.
  final pulumi.Input<String> loadBalancerEdition;

  /// The first ID of the resource.
  final pulumi.Input<String> loadBalancerId;

  /// The name of the resource.
  final pulumi.Input<String> loadBalancerName;

  /// The Load Balancing Operations Lock Configuration.
  final pulumi.Input<List<GetLoadBalancersBalancerLoadBalancerOperationLock>>
  loadBalancerOperationLocks;

  /// Modify the Protection Configuration.
  final pulumi.Input<List<GetLoadBalancersBalancerModificationProtectionConfig>>
  modificationProtectionConfigs;

  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;

  /// The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  final pulumi.Input<String> status;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// The ID of the virtual private cloud (VPC) where the ALB instance is deployed.
  final pulumi.Input<String> vpcId;

  /// The zones and vSwitches.
  final pulumi.Input<List<GetLoadBalancersBalancerZoneMapping>> zoneMappings;

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
      'accessLogConfigs':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersBalancerAccessLogConfig>,
            List<Map<String, dynamic>>
          >(
            accessLogConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersBalancerAccessLogConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'addressAllocatedMode': addressAllocatedMode,
      'addressType': addressType,
      'bandwidthPackageId': bandwidthPackageId,
      'createTime': createTime,
      'deletionProtectionConfigs':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersBalancerDeletionProtectionConfig>,
            List<Map<String, dynamic>>
          >(
            deletionProtectionConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersBalancerDeletionProtectionConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dnsName': dnsName,
      'id': id,
      'loadBalancerBillingConfigs':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersBalancerLoadBalancerBillingConfig>,
            List<Map<String, dynamic>>
          >(
            loadBalancerBillingConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersBalancerLoadBalancerBillingConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerBusinessStatus': loadBalancerBusinessStatus,
      'loadBalancerBussinessStatus': loadBalancerBussinessStatus,
      'loadBalancerEdition': loadBalancerEdition,
      'loadBalancerId': loadBalancerId,
      'loadBalancerName': loadBalancerName,
      'loadBalancerOperationLocks':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersBalancerLoadBalancerOperationLock>,
            List<Map<String, dynamic>>
          >(
            loadBalancerOperationLocks,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersBalancerLoadBalancerOperationLock,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'modificationProtectionConfigs':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersBalancerModificationProtectionConfig>,
            List<Map<String, dynamic>>
          >(
            modificationProtectionConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersBalancerModificationProtectionConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupId': resourceGroupId,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'zoneMappings':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersBalancerZoneMapping>,
            List<Map<String, dynamic>>
          >(
            zoneMappings,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersBalancerZoneMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetLoadBalancersBalancer.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancer(
      accessLogConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLoadBalancersBalancerAccessLogConfig>(
          map['accessLogConfigs']!,
          (value) => GetLoadBalancersBalancerAccessLogConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      addressAllocatedMode: pulumi.Input.fromValue(
        map['addressAllocatedMode'] as String,
      ),
      addressType: pulumi.Input.fromValue(map['addressType'] as String),
      bandwidthPackageId: pulumi.Input.fromValue(
        map['bandwidthPackageId'] as String,
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionProtectionConfigs: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetLoadBalancersBalancerDeletionProtectionConfig>(
          map['deletionProtectionConfigs']!,
          (value) => GetLoadBalancersBalancerDeletionProtectionConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      loadBalancerBillingConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetLoadBalancersBalancerLoadBalancerBillingConfig
        >(
          map['loadBalancerBillingConfigs']!,
          (value) => GetLoadBalancersBalancerLoadBalancerBillingConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      loadBalancerBusinessStatus: pulumi.Input.fromValue(
        map['loadBalancerBusinessStatus'] as String,
      ),
      loadBalancerBussinessStatus: pulumi.Input.fromValue(
        map['loadBalancerBussinessStatus'] as String,
      ),
      loadBalancerEdition: pulumi.Input.fromValue(
        map['loadBalancerEdition'] as String,
      ),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      loadBalancerName: pulumi.Input.fromValue(
        map['loadBalancerName'] as String,
      ),
      loadBalancerOperationLocks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetLoadBalancersBalancerLoadBalancerOperationLock
        >(
          map['loadBalancerOperationLocks']!,
          (value) => GetLoadBalancersBalancerLoadBalancerOperationLock.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      modificationProtectionConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetLoadBalancersBalancerModificationProtectionConfig
        >(
          map['modificationProtectionConfigs']!,
          (value) =>
              GetLoadBalancersBalancerModificationProtectionConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      zoneMappings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLoadBalancersBalancerZoneMapping>(
          map['zoneMappings']!,
          (value) => GetLoadBalancersBalancerZoneMapping.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
