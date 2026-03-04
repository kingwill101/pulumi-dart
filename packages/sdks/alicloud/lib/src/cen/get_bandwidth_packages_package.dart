// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBandwidthPackagesPackage {
  /// The bandwidth in Mbps of the CEN bandwidth package.
  final pulumi.Input<int> bandwidth;

  /// The billing method, including `POSTPAY` and `PREPAY`.
  final pulumi.Input<String> bandwidthPackageChargeType;

  /// Status of the CEN Bandwidth Package, including `Normal`, `FinancialLocked` and `SecurityLocked`.
  final pulumi.Input<String> businessStatus;

  /// The ID of the bandwidth package.
  final pulumi.Input<String> cenBandwidthPackageId;

  /// The name of the bandwidth package.
  final pulumi.Input<String> cenBandwidthPackageName;

  /// The list of CEN instances that are associated with the bandwidth package.
  final pulumi.Input<List<String>> cenIds;

  /// Description of the CEN Bandwidth Package.
  final pulumi.Input<String> description;
  final pulumi.Input<String> expiredTime;

  /// Region ID of the interconnected regions.
  final pulumi.Input<String> geographicRegionAId;

  /// Region ID of the interconnected regions.
  final pulumi.Input<String> geographicRegionBId;

  /// The area ID of the cross-area connection.
  final pulumi.Input<String> geographicSpanId;

  /// Indicates whether renewal data is involved.
  final pulumi.Input<String> hasReservationData;

  /// ID of the CEN Bandwidth Package.
  final pulumi.Input<String> id;

  /// ID of a CEN instance.
  final pulumi.Input<String> instanceId;

  /// Indicates whether the bandwidth package is a cross-border bandwidth package.
  final pulumi.Input<bool> isCrossBorder;

  /// Name of the CEN Bandwidth Package.
  final pulumi.Input<String> name;

  /// The billing method of the bandwidth package.
  final pulumi.Input<String> paymentType;

  /// The expiration time of the temporary upgrade.
  final pulumi.Input<String> reservationActiveTime;

  /// The restored bandwidth after the temporary upgrade.
  final pulumi.Input<String> reservationBandwidth;

  /// The billing method after the configuration change.
  final pulumi.Input<String> reservationInternetChargeType;

  /// The type of the configuration change.
  final pulumi.Input<String> reservationOrderType;

  /// Status of the CEN Bandwidth Package in CEN instance, Valid value: `Idle` and `InUse`.
  final pulumi.Input<String> status;

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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      bandwidthPackageChargeType: pulumi.Input.fromValue(
        map['bandwidthPackageChargeType'] as String,
      ),
      businessStatus: pulumi.Input.fromValue(map['businessStatus'] as String),
      cenBandwidthPackageId: pulumi.Input.fromValue(
        map['cenBandwidthPackageId'] as String,
      ),
      cenBandwidthPackageName: pulumi.Input.fromValue(
        map['cenBandwidthPackageName'] as String,
      ),
      cenIds: pulumi.Input.fromValue((map['cenIds'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      geographicRegionAId: pulumi.Input.fromValue(
        map['geographicRegionAId'] as String,
      ),
      geographicRegionBId: pulumi.Input.fromValue(
        map['geographicRegionBId'] as String,
      ),
      geographicSpanId: pulumi.Input.fromValue(
        map['geographicSpanId'] as String,
      ),
      hasReservationData: pulumi.Input.fromValue(
        map['hasReservationData'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      isCrossBorder: pulumi.Input.fromValue(map['isCrossBorder'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
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
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
