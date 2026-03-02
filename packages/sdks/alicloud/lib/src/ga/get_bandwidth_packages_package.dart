// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBandwidthPackagesPackage {
  /// The bandwidth value of bandwidth packet.
  final pulumi.Input<int> bandwidth;
  /// The Resource ID of the bandwidth.
  final pulumi.Input<String> bandwidthPackageId;
  /// The name of the bandwidth packet.
  final pulumi.Input<String> bandwidthPackageName;
  /// The bandwidth type of the bandwidth.
  final pulumi.Input<String> bandwidthType;
  /// Interworking area A of cross domain acceleration package. Only international stations support returning this parameter.
  final pulumi.Input<String> cbnGeographicRegionIda;
  /// Interworking area B of cross domain acceleration package. Only international stations support returning this parameter.
  final pulumi.Input<String> cbnGeographicRegionIdb;
  /// The description of bandwidth package.
  final pulumi.Input<String> description;
  /// Bandwidth package expiration time.
  final pulumi.Input<String> expiredTime;
  /// The ID of the Bandwidth Package.
  final pulumi.Input<String> id;
  /// The payment type of the bandwidth.
  final pulumi.Input<String> paymentType;
  /// The status of the bandwidth plan. Valid values: `active`, `binded`, `binding`, `finacialLocked`, `init`, `unbinding`, `updating`.
  final pulumi.Input<String> status;
  /// The type of the bandwidth plan. Valid values: `Basic`, `CrossDomain`.
  final pulumi.Input<String> type;

  /// Creates a new [GetBandwidthPackagesPackage].
  /// [bandwidth] The bandwidth value of bandwidth packet.
  /// [bandwidthPackageId] The Resource ID of the bandwidth.
  /// [bandwidthPackageName] The name of the bandwidth packet.
  /// [bandwidthType] The bandwidth type of the bandwidth.
  /// [cbnGeographicRegionIda] Interworking area A of cross domain acceleration package. Only international stations support returning this parameter.
  /// [cbnGeographicRegionIdb] Interworking area B of cross domain acceleration package. Only international stations support returning this parameter.
  /// [description] The description of bandwidth package.
  /// [expiredTime] Bandwidth package expiration time.
  /// [id] The ID of the Bandwidth Package.
  /// [paymentType] The payment type of the bandwidth.
  /// [status] The status of the bandwidth plan. Valid values: `active`, `binded`, `binding`, `finacialLocked`, `init`, `unbinding`, `updating`.
  /// [type] The type of the bandwidth plan. Valid values: `Basic`, `CrossDomain`.
  GetBandwidthPackagesPackage({
    required this.bandwidth,
    required this.bandwidthPackageId,
    required this.bandwidthPackageName,
    required this.bandwidthType,
    required this.cbnGeographicRegionIda,
    required this.cbnGeographicRegionIdb,
    required this.description,
    required this.expiredTime,
    required this.id,
    required this.paymentType,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'bandwidthPackageId': bandwidthPackageId,
      'bandwidthPackageName': bandwidthPackageName,
      'bandwidthType': bandwidthType,
      'cbnGeographicRegionIda': cbnGeographicRegionIda,
      'cbnGeographicRegionIdb': cbnGeographicRegionIdb,
      'description': description,
      'expiredTime': expiredTime,
      'id': id,
      'paymentType': paymentType,
      'status': status,
      'type': type,
    };
  }

  factory GetBandwidthPackagesPackage.fromMap(Map<String, dynamic> map) {
    return GetBandwidthPackagesPackage(
      bandwidth: (map['bandwidth'] as int).input(),
      bandwidthPackageId: (map['bandwidthPackageId'] as String).input(),
      bandwidthPackageName: (map['bandwidthPackageName'] as String).input(),
      bandwidthType: (map['bandwidthType'] as String).input(),
      cbnGeographicRegionIda: (map['cbnGeographicRegionIda'] as String).input(),
      cbnGeographicRegionIdb: (map['cbnGeographicRegionIdb'] as String).input(),
      description: (map['description'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      id: (map['id'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

