// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkPackagesPackage {
  /// The bandwidth of package.
  final pulumi.Input<int> bandwidth;
  /// The creation time of network package.
  final pulumi.Input<String> createTime;
  /// The public IP address list of the network packet.
  final pulumi.Input<List<String>> eipAddresses;
  /// The expired time of package.
  final pulumi.Input<String> expiredTime;
  /// The ID of the Network Package.
  final pulumi.Input<String> id;
  /// The internet charge type  of  package.
  final pulumi.Input<String> internetChargeType;
  /// The ID of network package.
  final pulumi.Input<String> networkPackageId;
  /// The ID of office site.
  final pulumi.Input<String> officeSiteId;
  /// The name of office site.
  final pulumi.Input<String> officeSiteName;
  /// The status of network package. Valid values: `Creating`, `InUse`, `Releasing`,`Released`.
  final pulumi.Input<String> status;

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
      bandwidth: (map['bandwidth'] as int).input(),
      createTime: (map['createTime'] as String).input(),
      eipAddresses: ((map['eipAddresses'] as List).cast<String>()).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      id: (map['id'] as String).input(),
      internetChargeType: (map['internetChargeType'] as String).input(),
      networkPackageId: (map['networkPackageId'] as String).input(),
      officeSiteId: (map['officeSiteId'] as String).input(),
      officeSiteName: (map['officeSiteName'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

