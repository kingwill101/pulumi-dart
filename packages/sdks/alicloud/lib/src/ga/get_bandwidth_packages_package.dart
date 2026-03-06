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
  const GetBandwidthPackagesPackage({
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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      bandwidthPackageId: pulumi.Input.fromValue(map['bandwidthPackageId'] as String),
      bandwidthPackageName: pulumi.Input.fromValue(map['bandwidthPackageName'] as String),
      bandwidthType: pulumi.Input.fromValue(map['bandwidthType'] as String),
      cbnGeographicRegionIda: pulumi.Input.fromValue(map['cbnGeographicRegionIda'] as String),
      cbnGeographicRegionIdb: pulumi.Input.fromValue(map['cbnGeographicRegionIdb'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

