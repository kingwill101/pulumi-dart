// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkPackagesPackage {
  /// The bandwidth of package.
  final int bandwidth;
  /// The creation time of network package.
  final String createTime;
  /// The public IP address list of the network packet.
  final List<String> eipAddresses;
  /// The expired time of package.
  final String expiredTime;
  /// The ID of the Network Package.
  final String id;
  /// The internet charge type  of  package.
  final String internetChargeType;
  /// The ID of network package.
  final String networkPackageId;
  /// The ID of office site.
  final String officeSiteId;
  /// The name of office site.
  final String officeSiteName;
  /// The status of network package. Valid values: `Creating`, `InUse`, `Releasing`,`Released`.
  final String status;

  /// Creates a new [GetNetworkPackagesPackage].
  /// [bandwidth] The bandwidth of package.
  /// [createTime] The creation time of network package.
  /// [eipAddresses] The public IP address list of the network packet.
  /// [expiredTime] The expired time of package.
  /// [id] The ID of the Network Package.
  /// [internetChargeType] The internet charge type  of  package.
  /// [networkPackageId] The ID of network package.
  /// [officeSiteId] The ID of office site.
  /// [officeSiteName] The name of office site.
  /// [status] The status of network package. Valid values: `Creating`, `InUse`, `Releasing`,`Released`.
  GetNetworkPackagesPackage({
    required this.bandwidth,
    required this.createTime,
    required this.eipAddresses,
    required this.expiredTime,
    required this.id,
    required this.internetChargeType,
    required this.networkPackageId,
    required this.officeSiteId,
    required this.officeSiteName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'createTime': createTime,
      'eipAddresses': eipAddresses,
      'expiredTime': expiredTime,
      'id': id,
      'internetChargeType': internetChargeType,
      'networkPackageId': networkPackageId,
      'officeSiteId': officeSiteId,
      'officeSiteName': officeSiteName,
      'status': status,
    };
  }

  factory GetNetworkPackagesPackage.fromMap(Map<String, dynamic> map) {
    return GetNetworkPackagesPackage(
      bandwidth: map['bandwidth'] as int,
      createTime: map['createTime'] as String,
      eipAddresses: (map['eipAddresses'] as List).cast<String>(),
      expiredTime: map['expiredTime'] as String,
      id: map['id'] as String,
      internetChargeType: map['internetChargeType'] as String,
      networkPackageId: map['networkPackageId'] as String,
      officeSiteId: map['officeSiteId'] as String,
      officeSiteName: map['officeSiteName'] as String,
      status: map['status'] as String,
    );
  }
}

