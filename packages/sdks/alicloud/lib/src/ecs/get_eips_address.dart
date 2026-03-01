// ignore_for_file: unused_element, unnecessary_cast


class GetEipsAddress {
  final String addressName;
  final String allocationId;
  final List<String> availableRegions;
  /// EIP internet max bandwidth in Mbps.
  final String bandwidth;
  final String bandwidthPackageBandwidth;
  final String bandwidthPackageId;
  final String bandwidthPackageType;
  final String createTime;
  /// (Optional, Available in v1.124.4+) Whether enable the deletion protection or not.
  final bool deletionProtection;
  final String description;
  final String expiredTime;
  final String hasReservationData;
  final String hdMonitorStatus;
  /// ID of the EIP.
  final String id;
  /// The ID of the instance that is being bound.
  final String instanceId;
  final String instanceRegionId;
  /// The instance type of that the EIP is bound.
  final String instanceType;
  /// EIP internet charge type.
  final String internetChargeType;
  /// Public IP Address of the the EIP.
  final String ipAddress;
  final String isp;
  final List<String> operationLocks;
  final String paymentType;
  final String reservationActiveTime;
  final String reservationBandwidth;
  final String reservationInternetChargeType;
  final String reservationOrderType;
  /// The Id of resource group which the eips belongs.
  final String resourceGroupId;
  final bool secondLimited;
  final String segmentInstanceId;
  /// EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetEipsAddress].
  /// [addressName] Required.
  /// [allocationId] Required.
  /// [availableRegions] Required.
  /// [bandwidth] EIP internet max bandwidth in Mbps.
  /// [bandwidthPackageBandwidth] Required.
  /// [bandwidthPackageId] Required.
  /// [bandwidthPackageType] Required.
  /// [createTime] Required.
  /// [deletionProtection] (Optional, Available in v1.124.4+) Whether enable the deletion protection or not.
  /// [description] Required.
  /// [expiredTime] Required.
  /// [hasReservationData] Required.
  /// [hdMonitorStatus] Required.
  /// [id] ID of the EIP.
  /// [instanceId] The ID of the instance that is being bound.
  /// [instanceRegionId] Required.
  /// [instanceType] The instance type of that the EIP is bound.
  /// [internetChargeType] EIP internet charge type.
  /// [ipAddress] Public IP Address of the the EIP.
  /// [isp] Required.
  /// [operationLocks] Required.
  /// [paymentType] Required.
  /// [reservationActiveTime] Required.
  /// [reservationBandwidth] Required.
  /// [reservationInternetChargeType] Required.
  /// [reservationOrderType] Required.
  /// [resourceGroupId] The Id of resource group which the eips belongs.
  /// [secondLimited] Required.
  /// [segmentInstanceId] Required.
  /// [status] EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  /// [tags] A mapping of tags to assign to the resource.
  GetEipsAddress({
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

  factory GetEipsAddress.fromMap(Map<String, dynamic> map) {
    return GetEipsAddress(
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

