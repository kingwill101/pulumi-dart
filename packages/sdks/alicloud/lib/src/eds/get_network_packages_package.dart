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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      eipAddresses: pulumi.Input.fromValue(
        (map['eipAddresses'] as List).cast<String>(),
      ),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      internetChargeType: pulumi.Input.fromValue(
        map['internetChargeType'] as String,
      ),
      networkPackageId: pulumi.Input.fromValue(
        map['networkPackageId'] as String,
      ),
      officeSiteId: pulumi.Input.fromValue(map['officeSiteId'] as String),
      officeSiteName: pulumi.Input.fromValue(map['officeSiteName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
