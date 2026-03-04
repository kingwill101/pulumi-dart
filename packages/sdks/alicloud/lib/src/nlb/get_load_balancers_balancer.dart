// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_balancer_operation_lock.dart';
import 'get_load_balancers_balancer_zone_mapping.dart';

class GetLoadBalancersBalancer {
  /// The IP version.
  final pulumi.Input<String> addressIpVersion;

  /// The type of IPv4 address used by the NLB instance.
  final pulumi.Input<String> addressType;

  /// The ID of the EIP bandwidth plan that is associated with the NLB instance if the NLB instance uses a public IP address.
  final pulumi.Input<String> bandwidthPackageId;

  /// The time when the resource was created. The time is displayed in UTC in `yyyy-MM-ddTHH:mm:ssZ` format.
  final pulumi.Input<String> createTime;

  /// Indicates whether cross-zone load balancing is enabled for the NLB instance.
  final pulumi.Input<bool> crossZoneEnabled;

  /// The domain name of the NLB instance.
  final pulumi.Input<String> dnsName;

  /// The ID of the NLB instance.
  final pulumi.Input<String> id;

  /// The type of IPv6 address used by the NLB instance.
  final pulumi.Input<String> ipv6AddressType;

  /// The business status of the NLB instance.
  final pulumi.Input<String> loadBalancerBusinessStatus;

  /// The ID of the NLB instance.
  final pulumi.Input<String> loadBalancerId;

  /// The name of the NLB instance.
  final pulumi.Input<String> loadBalancerName;

  /// The type of the SLB instance. Only Network is supported, which indicates NLB.
  final pulumi.Input<String> loadBalancerType;

  /// The configuration of the operation lock. This parameter takes effect if LoadBalancerBussinessStatus is Abnormal.
  final pulumi.Input<List<GetLoadBalancersBalancerOperationLock>>
  operationLocks;

  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;

  /// The security group to which the NLB instance belongs.
  final pulumi.Input<List<String>> securityGroupIds;

  /// The status of the NLB instance.
  final pulumi.Input<String> status;

  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the VPC where the NLB instance is deployed.
  final pulumi.Input<String> vpcId;

  /// The zones and the vSwitches in the zones. An NLB instance can be deployed across 2 to 10 zones.
  final pulumi.Input<List<GetLoadBalancersBalancerZoneMapping>> zoneMappings;

  /// Creates a new [GetLoadBalancersBalancer].
  /// [addressIpVersion] The IP version.
  /// [addressType] The type of IPv4 address used by the NLB instance.
  /// [bandwidthPackageId] The ID of the EIP bandwidth plan that is associated with the NLB instance if the NLB instance uses a public IP address.
  /// [createTime] The time when the resource was created. The time is displayed in UTC in `yyyy-MM-ddTHH:mm:ssZ` format.
  /// [crossZoneEnabled] Indicates whether cross-zone load balancing is enabled for the NLB instance.
  /// [dnsName] The domain name of the NLB instance.
  /// [id] The ID of the NLB instance.
  /// [ipv6AddressType] The type of IPv6 address used by the NLB instance.
  /// [loadBalancerBusinessStatus] The business status of the NLB instance.
  /// [loadBalancerId] The ID of the NLB instance.
  /// [loadBalancerName] The name of the NLB instance.
  /// [loadBalancerType] The type of the SLB instance. Only Network is supported, which indicates NLB.
  /// [operationLocks] The configuration of the operation lock. This parameter takes effect if LoadBalancerBussinessStatus is Abnormal.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityGroupIds] The security group to which the NLB instance belongs.
  /// [status] The status of the NLB instance.
  /// [tags] The tag of the resource.
  /// [vpcId] The ID of the VPC where the NLB instance is deployed.
  /// [zoneMappings] The zones and the vSwitches in the zones. An NLB instance can be deployed across 2 to 10 zones.
  GetLoadBalancersBalancer({
    required this.addressIpVersion,
    required this.addressType,
    required this.bandwidthPackageId,
    required this.createTime,
    required this.crossZoneEnabled,
    required this.dnsName,
    required this.id,
    required this.ipv6AddressType,
    required this.loadBalancerBusinessStatus,
    required this.loadBalancerId,
    required this.loadBalancerName,
    required this.loadBalancerType,
    required this.operationLocks,
    required this.resourceGroupId,
    required this.securityGroupIds,
    required this.status,
    this.tags,
    required this.vpcId,
    required this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': addressIpVersion,
      'addressType': addressType,
      'bandwidthPackageId': bandwidthPackageId,
      'createTime': createTime,
      'crossZoneEnabled': crossZoneEnabled,
      'dnsName': dnsName,
      'id': id,
      'ipv6AddressType': ipv6AddressType,
      'loadBalancerBusinessStatus': loadBalancerBusinessStatus,
      'loadBalancerId': loadBalancerId,
      'loadBalancerName': loadBalancerName,
      'loadBalancerType': loadBalancerType,
      'operationLocks':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersBalancerOperationLock>,
            List<Map<String, dynamic>>
          >(
            operationLocks,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersBalancerOperationLock,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupId': resourceGroupId,
      'securityGroupIds': securityGroupIds,
      'status': status,
      'tags': ?tags,
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
      addressIpVersion: pulumi.Input.fromValue(
        map['addressIpVersion'] as String,
      ),
      addressType: pulumi.Input.fromValue(map['addressType'] as String),
      bandwidthPackageId: pulumi.Input.fromValue(
        map['bandwidthPackageId'] as String,
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      crossZoneEnabled: pulumi.Input.fromValue(map['crossZoneEnabled'] as bool),
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipv6AddressType: pulumi.Input.fromValue(map['ipv6AddressType'] as String),
      loadBalancerBusinessStatus: pulumi.Input.fromValue(
        map['loadBalancerBusinessStatus'] as String,
      ),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      loadBalancerName: pulumi.Input.fromValue(
        map['loadBalancerName'] as String,
      ),
      loadBalancerType: pulumi.Input.fromValue(
        map['loadBalancerType'] as String,
      ),
      operationLocks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLoadBalancersBalancerOperationLock>(
          map['operationLocks']!,
          (value) => GetLoadBalancersBalancerOperationLock.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      securityGroupIds: pulumi.Input.fromValue(
        (map['securityGroupIds'] as List).cast<String>(),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
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
