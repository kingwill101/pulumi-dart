// ignore_for_file: unused_element, unnecessary_cast


class GetBandwidthPackagesPackage {
  /// The bandwidth value of bandwidth packet.
  final int bandwidth;
  /// The Resource ID of the bandwidth.
  final String bandwidthPackageId;
  /// The name of the bandwidth packet.
  final String bandwidthPackageName;
  /// The bandwidth type of the bandwidth.
  final String bandwidthType;
  /// Interworking area A of cross domain acceleration package. Only international stations support returning this parameter.
  final String cbnGeographicRegionIda;
  /// Interworking area B of cross domain acceleration package. Only international stations support returning this parameter.
  final String cbnGeographicRegionIdb;
  /// The description of bandwidth package.
  final String description;
  /// Bandwidth package expiration time.
  final String expiredTime;
  /// The ID of the Bandwidth Package.
  final String id;
  /// The payment type of the bandwidth.
  final String paymentType;
  /// The status of the bandwidth plan. Valid values: `active`, `binded`, `binding`, `finacialLocked`, `init`, `unbinding`, `updating`.
  final String status;
  /// The type of the bandwidth plan. Valid values: `Basic`, `CrossDomain`.
  final String type;

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
      bandwidth: map['bandwidth'] as int,
      bandwidthPackageId: map['bandwidthPackageId'] as String,
      bandwidthPackageName: map['bandwidthPackageName'] as String,
      bandwidthType: map['bandwidthType'] as String,
      cbnGeographicRegionIda: map['cbnGeographicRegionIda'] as String,
      cbnGeographicRegionIdb: map['cbnGeographicRegionIdb'] as String,
      description: map['description'] as String,
      expiredTime: map['expiredTime'] as String,
      id: map['id'] as String,
      paymentType: map['paymentType'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

