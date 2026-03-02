// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEipsAddress {
  final pulumi.Input<String> addressName;
  final pulumi.Input<String> allocationId;
  final pulumi.Input<List<String>> availableRegions;
  /// EIP internet max bandwidth in Mbps.
  final pulumi.Input<String> bandwidth;
  final pulumi.Input<String> bandwidthPackageBandwidth;
  final pulumi.Input<String> bandwidthPackageId;
  final pulumi.Input<String> bandwidthPackageType;
  final pulumi.Input<String> createTime;
  /// (Optional, Available in v1.124.4+) Whether enable the deletion protection or not.
  final pulumi.Input<bool> deletionProtection;
  final pulumi.Input<String> description;
  final pulumi.Input<String> expiredTime;
  final pulumi.Input<String> hasReservationData;
  final pulumi.Input<String> hdMonitorStatus;
  /// ID of the EIP.
  final pulumi.Input<String> id;
  /// The ID of the instance that is being bound.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> instanceRegionId;
  /// The instance type of that the EIP is bound.
  final pulumi.Input<String> instanceType;
  /// EIP internet charge type.
  final pulumi.Input<String> internetChargeType;
  /// Public IP Address of the the EIP.
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> isp;
  final pulumi.Input<List<String>> operationLocks;
  final pulumi.Input<String> paymentType;
  final pulumi.Input<String> reservationActiveTime;
  final pulumi.Input<String> reservationBandwidth;
  final pulumi.Input<String> reservationInternetChargeType;
  final pulumi.Input<String> reservationOrderType;
  /// The Id of resource group which the eips belongs.
  final pulumi.Input<String> resourceGroupId;
  final pulumi.Input<bool> secondLimited;
  final pulumi.Input<String> segmentInstanceId;
  /// EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

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

