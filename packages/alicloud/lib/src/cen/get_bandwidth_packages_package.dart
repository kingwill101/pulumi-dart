// ignore_for_file: unused_element, unnecessary_cast


class GetBandwidthPackagesPackage {
  /// The bandwidth in Mbps of the CEN bandwidth package.
  final int bandwidth;
  /// The billing method, including `POSTPAY` and `PREPAY`.
  final String bandwidthPackageChargeType;
  /// Status of the CEN Bandwidth Package, including `Normal`, `FinancialLocked` and `SecurityLocked`.
  final String businessStatus;
  /// The ID of the bandwidth package.
  final String cenBandwidthPackageId;
  /// The name of the bandwidth package.
  final String cenBandwidthPackageName;
  /// The list of CEN instances that are associated with the bandwidth package.
  final List<String> cenIds;
  /// Description of the CEN Bandwidth Package.
  final String description;
  final String expiredTime;
  /// Region ID of the interconnected regions.
  final String geographicRegionAId;
  /// Region ID of the interconnected regions.
  final String geographicRegionBId;
  /// The area ID of the cross-area connection.
  final String geographicSpanId;
  /// Indicates whether renewal data is involved.
  final String hasReservationData;
  /// ID of the CEN Bandwidth Package.
  final String id;
  /// ID of a CEN instance.
  final String instanceId;
  /// Indicates whether the bandwidth package is a cross-border bandwidth package.
  final bool isCrossBorder;
  /// Name of the CEN Bandwidth Package.
  final String name;
  /// The billing method of the bandwidth package.
  final String paymentType;
  /// The expiration time of the temporary upgrade.
  final String reservationActiveTime;
  /// The restored bandwidth after the temporary upgrade.
  final String reservationBandwidth;
  /// The billing method after the configuration change.
  final String reservationInternetChargeType;
  /// The type of the configuration change.
  final String reservationOrderType;
  /// Status of the CEN Bandwidth Package in CEN instance, Valid value: `Idle` and `InUse`.
  final String status;

  /// Creates a new [GetBandwidthPackagesPackage].
  /// [bandwidth] The bandwidth in Mbps of the CEN bandwidth package.
  /// [bandwidthPackageChargeType] The billing method, including `POSTPAY` and `PREPAY`.
  /// [businessStatus] Status of the CEN Bandwidth Package, including `Normal`, `FinancialLocked` and `SecurityLocked`.
  /// [cenBandwidthPackageId] The ID of the bandwidth package.
  /// [cenBandwidthPackageName] The name of the bandwidth package.
  /// [cenIds] The list of CEN instances that are associated with the bandwidth package.
  /// [description] Description of the CEN Bandwidth Package.
  /// [expiredTime] Required.
  /// [geographicRegionAId] Region ID of the interconnected regions.
  /// [geographicRegionBId] Region ID of the interconnected regions.
  /// [geographicSpanId] The area ID of the cross-area connection.
  /// [hasReservationData] Indicates whether renewal data is involved.
  /// [id] ID of the CEN Bandwidth Package.
  /// [instanceId] ID of a CEN instance.
  /// [isCrossBorder] Indicates whether the bandwidth package is a cross-border bandwidth package.
  /// [name] Name of the CEN Bandwidth Package.
  /// [paymentType] The billing method of the bandwidth package.
  /// [reservationActiveTime] The expiration time of the temporary upgrade.
  /// [reservationBandwidth] The restored bandwidth after the temporary upgrade.
  /// [reservationInternetChargeType] The billing method after the configuration change.
  /// [reservationOrderType] The type of the configuration change.
  /// [status] Status of the CEN Bandwidth Package in CEN instance, Valid value: `Idle` and `InUse`.
  GetBandwidthPackagesPackage({
    required this.bandwidth,
    required this.bandwidthPackageChargeType,
    required this.businessStatus,
    required this.cenBandwidthPackageId,
    required this.cenBandwidthPackageName,
    required this.cenIds,
    required this.description,
    required this.expiredTime,
    required this.geographicRegionAId,
    required this.geographicRegionBId,
    required this.geographicSpanId,
    required this.hasReservationData,
    required this.id,
    required this.instanceId,
    required this.isCrossBorder,
    required this.name,
    required this.paymentType,
    required this.reservationActiveTime,
    required this.reservationBandwidth,
    required this.reservationInternetChargeType,
    required this.reservationOrderType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'bandwidthPackageChargeType': bandwidthPackageChargeType,
      'businessStatus': businessStatus,
      'cenBandwidthPackageId': cenBandwidthPackageId,
      'cenBandwidthPackageName': cenBandwidthPackageName,
      'cenIds': cenIds,
      'description': description,
      'expiredTime': expiredTime,
      'geographicRegionAId': geographicRegionAId,
      'geographicRegionBId': geographicRegionBId,
      'geographicSpanId': geographicSpanId,
      'hasReservationData': hasReservationData,
      'id': id,
      'instanceId': instanceId,
      'isCrossBorder': isCrossBorder,
      'name': name,
      'paymentType': paymentType,
      'reservationActiveTime': reservationActiveTime,
      'reservationBandwidth': reservationBandwidth,
      'reservationInternetChargeType': reservationInternetChargeType,
      'reservationOrderType': reservationOrderType,
      'status': status,
    };
  }

  factory GetBandwidthPackagesPackage.fromMap(Map<String, dynamic> map) {
    return GetBandwidthPackagesPackage(
      bandwidth: map['bandwidth'] as int,
      bandwidthPackageChargeType: map['bandwidthPackageChargeType'] as String,
      businessStatus: map['businessStatus'] as String,
      cenBandwidthPackageId: map['cenBandwidthPackageId'] as String,
      cenBandwidthPackageName: map['cenBandwidthPackageName'] as String,
      cenIds: (map['cenIds'] as List).cast<String>(),
      description: map['description'] as String,
      expiredTime: map['expiredTime'] as String,
      geographicRegionAId: map['geographicRegionAId'] as String,
      geographicRegionBId: map['geographicRegionBId'] as String,
      geographicSpanId: map['geographicSpanId'] as String,
      hasReservationData: map['hasReservationData'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      isCrossBorder: map['isCrossBorder'] as bool,
      name: map['name'] as String,
      paymentType: map['paymentType'] as String,
      reservationActiveTime: map['reservationActiveTime'] as String,
      reservationBandwidth: map['reservationBandwidth'] as String,
      reservationInternetChargeType: map['reservationInternetChargeType'] as String,
      reservationOrderType: map['reservationOrderType'] as String,
      status: map['status'] as String,
    );
  }
}

