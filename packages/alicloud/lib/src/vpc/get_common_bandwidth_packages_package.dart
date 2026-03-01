// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_common_bandwidth_packages_package_public_ip_address.dart';

class GetCommonBandwidthPackagesPackage {
  /// The peak bandwidth of the Internet Shared Bandwidth instance.
  final String bandwidth;
  /// The resource ID of bandwidth package.
  final String bandwidthPackageId;
  /// The name of bandwidth package.
  final String bandwidthPackageName;
  /// The business status of the Common Bandwidth Package instance.
  final String businessStatus;
  /// The deletion protection of bandwidth package.
  final bool deletionProtection;
  /// The description of the Common Bandwidth Package instance.
  final String description;
  /// The expired time of bandwidth package.
  final String expiredTime;
  /// Is has reservation data.
  final bool hasReservationData;
  /// ID of the Common Bandwidth Package.
  final String id;
  /// The internet charge type of bandwidth package.
  final String internetChargeType;
  /// ISP of the Common Bandwidth Package.
  final String isp;
  /// Name of the Common Bandwidth Package.
  final String name;
  /// The payment type of bandwidth package.
  final String paymentType;
  /// Public ip addresses that in the Common Bandwidth Pakcage.
  final List<GetCommonBandwidthPackagesPackagePublicIpAddress> publicIpAddresses;
  /// The ratio of bandwidth package.
  final int ratio;
  /// The active time of reservation.
  final String reservationActiveTime;
  /// The bandwidth of reservation.
  final String reservationBandwidth;
  /// The charge type of reservation internet.
  final String reservationInternetChargeType;
  /// The type of reservation order.
  final String reservationOrderType;
  /// The Id of resource group which the common bandwidth package belongs.
  final String resourceGroupId;
  /// The service managed.
  final int serviceManaged;
  /// The status of bandwidth package. Valid values: `Available` and `Pending`.
  final String status;

  /// Creates a new [GetCommonBandwidthPackagesPackage].
  /// [bandwidth] The peak bandwidth of the Internet Shared Bandwidth instance.
  /// [bandwidthPackageId] The resource ID of bandwidth package.
  /// [bandwidthPackageName] The name of bandwidth package.
  /// [businessStatus] The business status of the Common Bandwidth Package instance.
  /// [deletionProtection] The deletion protection of bandwidth package.
  /// [description] The description of the Common Bandwidth Package instance.
  /// [expiredTime] The expired time of bandwidth package.
  /// [hasReservationData] Is has reservation data.
  /// [id] ID of the Common Bandwidth Package.
  /// [internetChargeType] The internet charge type of bandwidth package.
  /// [isp] ISP of the Common Bandwidth Package.
  /// [name] Name of the Common Bandwidth Package.
  /// [paymentType] The payment type of bandwidth package.
  /// [publicIpAddresses] Public ip addresses that in the Common Bandwidth Pakcage.
  /// [ratio] The ratio of bandwidth package.
  /// [reservationActiveTime] The active time of reservation.
  /// [reservationBandwidth] The bandwidth of reservation.
  /// [reservationInternetChargeType] The charge type of reservation internet.
  /// [reservationOrderType] The type of reservation order.
  /// [resourceGroupId] The Id of resource group which the common bandwidth package belongs.
  /// [serviceManaged] The service managed.
  /// [status] The status of bandwidth package. Valid values: `Available` and `Pending`.
  GetCommonBandwidthPackagesPackage({
    required this.bandwidth,
    required this.bandwidthPackageId,
    required this.bandwidthPackageName,
    required this.businessStatus,
    required this.deletionProtection,
    required this.description,
    required this.expiredTime,
    required this.hasReservationData,
    required this.id,
    required this.internetChargeType,
    required this.isp,
    required this.name,
    required this.paymentType,
    required this.publicIpAddresses,
    required this.ratio,
    required this.reservationActiveTime,
    required this.reservationBandwidth,
    required this.reservationInternetChargeType,
    required this.reservationOrderType,
    required this.resourceGroupId,
    required this.serviceManaged,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'bandwidthPackageId': bandwidthPackageId,
      'bandwidthPackageName': bandwidthPackageName,
      'businessStatus': businessStatus,
      'deletionProtection': deletionProtection,
      'description': description,
      'expiredTime': expiredTime,
      'hasReservationData': hasReservationData,
      'id': id,
      'internetChargeType': internetChargeType,
      'isp': isp,
      'name': name,
      'paymentType': paymentType,
      'publicIpAddresses': pulumi.Input.encodeList<GetCommonBandwidthPackagesPackagePublicIpAddress, Map<String, dynamic>>(publicIpAddresses, (value) => value.toMap()),
      'ratio': ratio,
      'reservationActiveTime': reservationActiveTime,
      'reservationBandwidth': reservationBandwidth,
      'reservationInternetChargeType': reservationInternetChargeType,
      'reservationOrderType': reservationOrderType,
      'resourceGroupId': resourceGroupId,
      'serviceManaged': serviceManaged,
      'status': status,
    };
  }

  factory GetCommonBandwidthPackagesPackage.fromMap(Map<String, dynamic> map) {
    return GetCommonBandwidthPackagesPackage(
      bandwidth: map['bandwidth'] as String,
      bandwidthPackageId: map['bandwidthPackageId'] as String,
      bandwidthPackageName: map['bandwidthPackageName'] as String,
      businessStatus: map['businessStatus'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      expiredTime: map['expiredTime'] as String,
      hasReservationData: map['hasReservationData'] as bool,
      id: map['id'] as String,
      internetChargeType: map['internetChargeType'] as String,
      isp: map['isp'] as String,
      name: map['name'] as String,
      paymentType: map['paymentType'] as String,
      publicIpAddresses: pulumi.Input.decodeList<GetCommonBandwidthPackagesPackagePublicIpAddress>(map['publicIpAddresses'], (value) => GetCommonBandwidthPackagesPackagePublicIpAddress.fromMap((value as Map).cast<String, dynamic>())),
      ratio: map['ratio'] as int,
      reservationActiveTime: map['reservationActiveTime'] as String,
      reservationBandwidth: map['reservationBandwidth'] as String,
      reservationInternetChargeType: map['reservationInternetChargeType'] as String,
      reservationOrderType: map['reservationOrderType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      serviceManaged: map['serviceManaged'] as int,
      status: map['status'] as String,
    );
  }
}

