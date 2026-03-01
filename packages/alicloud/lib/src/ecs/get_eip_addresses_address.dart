// ignore_for_file: unused_element, unnecessary_cast


class GetEipAddressesAddress {
  /// The name of the EIP.
  final String addressName;
  /// The ID of the EIP.
  final String allocationId;
  /// The ID of the region to which the EIP belongs.
  final List<String> availableRegions;
  /// The maximum bandwidth of the EIP. Unit: Mbit/s.
  final String bandwidth;
  /// The bandwidth value of the EIP bandwidth plan with which the EIP is associated.
  final String bandwidthPackageBandwidth;
  /// The ID of the EIP bandwidth plan.
  final String bandwidthPackageId;
  /// The type of the bandwidth. Only CommonBandwidthPackage (an EIP bandwidth plan) is returned.
  final String bandwidthPackageType;
  /// The time when the EIP was created.
  final String createTime;
  /// Indicates whether deletion protection is enabled.
  final bool deletionProtection;
  /// The description of the EIP.
  final String description;
  /// The expiration date. The time follows the ISO 8601 standard and is displayed in UTC. Format: YYYY-MM-DDThh:mmZ.
  final String expiredTime;
  /// Indicates whether renewal data is included. This parameter returns true only when the parameter IncludeReservationData is set to true, and some orders have not taken effect.
  final String hasReservationData;
  /// Indicates whether fine-grained monitoring is enabled for the EIP.
  final String hdMonitorStatus;
  /// The ID of the Address.
  final String id;
  /// The ID of the instance with which the EIP is associated.
  final String instanceId;
  /// The region ID of the associated resource.
  final String instanceRegionId;
  /// The type of the instance with which the EIP is associated.
  final String instanceType;
  /// The metering method of the EIP.
  final String internetChargeType;
  /// The IP address of the EIP.
  final String ipAddress;
  /// The Internet service provider (ISP).
  final String isp;
  /// The details about the locked EIP.
  final List<String> operationLocks;
  /// The billing method of the EIP.
  final String paymentType;
  /// The time when the renewal takes effect.
  final String reservationActiveTime;
  /// The bandwidth after the renewal takes effect.
  final String reservationBandwidth;
  /// The metering method of the renewal.
  final String reservationInternetChargeType;
  /// The type of the renewal order.
  final String reservationOrderType;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// Indicates whether level-2 throttling is configured.
  final bool secondLimited;
  /// The IDs of the contiguous EIPs.
  final String segmentInstanceId;
  /// The status of the EIP.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

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
      addressName: map['addressName'] as String,
      allocationId: map['allocationId'] as String,
      availableRegions: (map['availableRegions'] as List).cast<String>(),
      bandwidth: map['bandwidth'] as String,
      bandwidthPackageBandwidth: map['bandwidthPackageBandwidth'] as String,
      bandwidthPackageId: map['bandwidthPackageId'] as String,
      bandwidthPackageType: map['bandwidthPackageType'] as String,
      createTime: map['createTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      expiredTime: map['expiredTime'] as String,
      hasReservationData: map['hasReservationData'] as String,
      hdMonitorStatus: map['hdMonitorStatus'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceRegionId: map['instanceRegionId'] as String,
      instanceType: map['instanceType'] as String,
      internetChargeType: map['internetChargeType'] as String,
      ipAddress: map['ipAddress'] as String,
      isp: map['isp'] as String,
      operationLocks: (map['operationLocks'] as List).cast<String>(),
      paymentType: map['paymentType'] as String,
      reservationActiveTime: map['reservationActiveTime'] as String,
      reservationBandwidth: map['reservationBandwidth'] as String,
      reservationInternetChargeType: map['reservationInternetChargeType'] as String,
      reservationOrderType: map['reservationOrderType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      secondLimited: map['secondLimited'] as bool,
      segmentInstanceId: map['segmentInstanceId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

