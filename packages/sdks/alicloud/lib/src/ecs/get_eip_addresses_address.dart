// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEipAddressesAddress {
  /// The name of the EIP.
  final pulumi.Input<String> addressName;
  /// The ID of the EIP.
  final pulumi.Input<String> allocationId;
  /// The ID of the region to which the EIP belongs.
  final pulumi.Input<List<String>> availableRegions;
  /// The maximum bandwidth of the EIP. Unit: Mbit/s.
  final pulumi.Input<String> bandwidth;
  /// The bandwidth value of the EIP bandwidth plan with which the EIP is associated.
  final pulumi.Input<String> bandwidthPackageBandwidth;
  /// The ID of the EIP bandwidth plan.
  final pulumi.Input<String> bandwidthPackageId;
  /// The type of the bandwidth. Only CommonBandwidthPackage (an EIP bandwidth plan) is returned.
  final pulumi.Input<String> bandwidthPackageType;
  /// The time when the EIP was created.
  final pulumi.Input<String> createTime;
  /// Indicates whether deletion protection is enabled.
  final pulumi.Input<bool> deletionProtection;
  /// The description of the EIP.
  final pulumi.Input<String> description;
  /// The expiration date. The time follows the ISO 8601 standard and is displayed in UTC. Format: YYYY-MM-DDThh:mmZ.
  final pulumi.Input<String> expiredTime;
  /// Indicates whether renewal data is included. This parameter returns true only when the parameter IncludeReservationData is set to true, and some orders have not taken effect.
  final pulumi.Input<String> hasReservationData;
  /// Indicates whether fine-grained monitoring is enabled for the EIP.
  final pulumi.Input<String> hdMonitorStatus;
  /// The ID of the Address.
  final pulumi.Input<String> id;
  /// The ID of the instance with which the EIP is associated.
  final pulumi.Input<String> instanceId;
  /// The region ID of the associated resource.
  final pulumi.Input<String> instanceRegionId;
  /// The type of the instance with which the EIP is associated.
  final pulumi.Input<String> instanceType;
  /// The metering method of the EIP.
  final pulumi.Input<String> internetChargeType;
  /// The IP address of the EIP.
  final pulumi.Input<String> ipAddress;
  /// The Internet service provider (ISP).
  final pulumi.Input<String> isp;
  /// The details about the locked EIP.
  final pulumi.Input<List<String>> operationLocks;
  /// The billing method of the EIP.
  final pulumi.Input<String> paymentType;
  /// The time when the renewal takes effect.
  final pulumi.Input<String> reservationActiveTime;
  /// The bandwidth after the renewal takes effect.
  final pulumi.Input<String> reservationBandwidth;
  /// The metering method of the renewal.
  final pulumi.Input<String> reservationInternetChargeType;
  /// The type of the renewal order.
  final pulumi.Input<String> reservationOrderType;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// Indicates whether level-2 throttling is configured.
  final pulumi.Input<bool> secondLimited;
  /// The IDs of the contiguous EIPs.
  final pulumi.Input<String> segmentInstanceId;
  /// The status of the EIP.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetEipAddressesAddress].
  /// [addressName] The name of the EIP.
  /// [allocationId] The ID of the EIP.
  /// [availableRegions] The ID of the region to which the EIP belongs.
  /// [bandwidth] The maximum bandwidth of the EIP. Unit: Mbit/s.
  /// [bandwidthPackageBandwidth] The bandwidth value of the EIP bandwidth plan with which the EIP is associated.
  /// [bandwidthPackageId] The ID of the EIP bandwidth plan.
  /// [bandwidthPackageType] The type of the bandwidth. Only CommonBandwidthPackage (an EIP bandwidth plan) is returned.
  /// [createTime] The time when the EIP was created.
  /// [deletionProtection] Indicates whether deletion protection is enabled.
  /// [description] The description of the EIP.
  /// [expiredTime] The expiration date. The time follows the ISO 8601 standard and is displayed in UTC. Format: YYYY-MM-DDThh:mmZ.
  /// [hasReservationData] Indicates whether renewal data is included. This parameter returns true only when the parameter IncludeReservationData is set to true, and some orders have not taken effect.
  /// [hdMonitorStatus] Indicates whether fine-grained monitoring is enabled for the EIP.
  /// [id] The ID of the Address.
  /// [instanceId] The ID of the instance with which the EIP is associated.
  /// [instanceRegionId] The region ID of the associated resource.
  /// [instanceType] The type of the instance with which the EIP is associated.
  /// [internetChargeType] The metering method of the EIP.
  /// [ipAddress] The IP address of the EIP.
  /// [isp] The Internet service provider (ISP).
  /// [operationLocks] The details about the locked EIP.
  /// [paymentType] The billing method of the EIP.
  /// [reservationActiveTime] The time when the renewal takes effect.
  /// [reservationBandwidth] The bandwidth after the renewal takes effect.
  /// [reservationInternetChargeType] The metering method of the renewal.
  /// [reservationOrderType] The type of the renewal order.
  /// [resourceGroupId] The ID of the resource group.
  /// [secondLimited] Indicates whether level-2 throttling is configured.
  /// [segmentInstanceId] The IDs of the contiguous EIPs.
  /// [status] The status of the EIP.
  /// [tags] A mapping of tags to assign to the resource.
  GetEipAddressesAddress({
    required this.addressName,
    required this.allocationId,
    required this.availableRegions,
    required this.bandwidth,
    required this.bandwidthPackageBandwidth,
    required this.bandwidthPackageId,
    required this.bandwidthPackageType,
    required this.createTime,
    required this.deletionProtection,
    required this.description,
    required this.expiredTime,
    required this.hasReservationData,
    required this.hdMonitorStatus,
    required this.id,
    required this.instanceId,
    required this.instanceRegionId,
    required this.instanceType,
    required this.internetChargeType,
    required this.ipAddress,
    required this.isp,
    required this.operationLocks,
    required this.paymentType,
    required this.reservationActiveTime,
    required this.reservationBandwidth,
    required this.reservationInternetChargeType,
    required this.reservationOrderType,
    required this.resourceGroupId,
    required this.secondLimited,
    required this.segmentInstanceId,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressName': addressName,
      'allocationId': allocationId,
      'availableRegions': availableRegions,
      'bandwidth': bandwidth,
      'bandwidthPackageBandwidth': bandwidthPackageBandwidth,
      'bandwidthPackageId': bandwidthPackageId,
      'bandwidthPackageType': bandwidthPackageType,
      'createTime': createTime,
      'deletionProtection': deletionProtection,
      'description': description,
      'expiredTime': expiredTime,
      'hasReservationData': hasReservationData,
      'hdMonitorStatus': hdMonitorStatus,
      'id': id,
      'instanceId': instanceId,
      'instanceRegionId': instanceRegionId,
      'instanceType': instanceType,
      'internetChargeType': internetChargeType,
      'ipAddress': ipAddress,
      'isp': isp,
      'operationLocks': operationLocks,
      'paymentType': paymentType,
      'reservationActiveTime': reservationActiveTime,
      'reservationBandwidth': reservationBandwidth,
      'reservationInternetChargeType': reservationInternetChargeType,
      'reservationOrderType': reservationOrderType,
      'resourceGroupId': resourceGroupId,
      'secondLimited': secondLimited,
      'segmentInstanceId': segmentInstanceId,
      'status': status,
      'tags': tags,
    };
  }

  factory GetEipAddressesAddress.fromMap(Map<String, dynamic> map) {
    return GetEipAddressesAddress(
      addressName: (map['addressName'] as String).input(),
      allocationId: (map['allocationId'] as String).input(),
      availableRegions: ((map['availableRegions'] as List).cast<String>()).input(),
      bandwidth: (map['bandwidth'] as String).input(),
      bandwidthPackageBandwidth: (map['bandwidthPackageBandwidth'] as String).input(),
      bandwidthPackageId: (map['bandwidthPackageId'] as String).input(),
      bandwidthPackageType: (map['bandwidthPackageType'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      deletionProtection: (map['deletionProtection'] as bool).input(),
      description: (map['description'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      hasReservationData: (map['hasReservationData'] as String).input(),
      hdMonitorStatus: (map['hdMonitorStatus'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceRegionId: (map['instanceRegionId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      internetChargeType: (map['internetChargeType'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      isp: (map['isp'] as String).input(),
      operationLocks: ((map['operationLocks'] as List).cast<String>()).input(),
      paymentType: (map['paymentType'] as String).input(),
      reservationActiveTime: (map['reservationActiveTime'] as String).input(),
      reservationBandwidth: (map['reservationBandwidth'] as String).input(),
      reservationInternetChargeType: (map['reservationInternetChargeType'] as String).input(),
      reservationOrderType: (map['reservationOrderType'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      secondLimited: (map['secondLimited'] as bool).input(),
      segmentInstanceId: (map['segmentInstanceId'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

