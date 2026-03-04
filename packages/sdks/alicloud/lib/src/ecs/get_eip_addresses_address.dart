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
      addressName: pulumi.Input.fromValue(map['addressName'] as String),
      allocationId: pulumi.Input.fromValue(map['allocationId'] as String),
      availableRegions: pulumi.Input.fromValue(
        (map['availableRegions'] as List).cast<String>(),
      ),
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as String),
      bandwidthPackageBandwidth: pulumi.Input.fromValue(
        map['bandwidthPackageBandwidth'] as String,
      ),
      bandwidthPackageId: pulumi.Input.fromValue(
        map['bandwidthPackageId'] as String,
      ),
      bandwidthPackageType: pulumi.Input.fromValue(
        map['bandwidthPackageType'] as String,
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionProtection: pulumi.Input.fromValue(
        map['deletionProtection'] as bool,
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      hasReservationData: pulumi.Input.fromValue(
        map['hasReservationData'] as String,
      ),
      hdMonitorStatus: pulumi.Input.fromValue(map['hdMonitorStatus'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceRegionId: pulumi.Input.fromValue(
        map['instanceRegionId'] as String,
      ),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetChargeType: pulumi.Input.fromValue(
        map['internetChargeType'] as String,
      ),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      isp: pulumi.Input.fromValue(map['isp'] as String),
      operationLocks: pulumi.Input.fromValue(
        (map['operationLocks'] as List).cast<String>(),
      ),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      reservationActiveTime: pulumi.Input.fromValue(
        map['reservationActiveTime'] as String,
      ),
      reservationBandwidth: pulumi.Input.fromValue(
        map['reservationBandwidth'] as String,
      ),
      reservationInternetChargeType: pulumi.Input.fromValue(
        map['reservationInternetChargeType'] as String,
      ),
      reservationOrderType: pulumi.Input.fromValue(
        map['reservationOrderType'] as String,
      ),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      secondLimited: pulumi.Input.fromValue(map['secondLimited'] as bool),
      segmentInstanceId: pulumi.Input.fromValue(
        map['segmentInstanceId'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
