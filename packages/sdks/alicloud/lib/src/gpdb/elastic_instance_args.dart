// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_elastic_instance_elastic_instance_args_doc}
/// The set of arguments for ElasticInstance.
/// {@endtemplate}
/// {@macro pulumi_gpdb_elastic_instance_elastic_instance_args_doc}
class ElasticInstanceArgs {
  /// The edition of the instance. Valid values: `Basic`, `HighAvailability`. Default value: `HighAvailability`.
  final pulumi.Input<String>? dbInstanceCategory;
  /// The description of ADB PG instance. It is a string of 2 to 256 characters.
  final pulumi.Input<String>? dbInstanceDescription;
  /// The ID of the encryption key. **Note:** If the `encryption_type` parameter is set to `CloudDisk`, you must specify this parameter to the encryption key that is in the same region as the disk that is specified by the EncryptionType parameter. Otherwise, leave this parameter empty.
  final pulumi.Input<String>? encryptionKey;
  /// The type of the encryption. Valid values: `CloudDisk`. **Note:** Disk encryption cannot be disabled after it is enabled.
  final pulumi.Input<String>? encryptionType;
  /// Database engine: `gpdb`.
  final pulumi.Input<String> engine;
  /// Database version. Valid value is `6.0`.
  final pulumi.Input<String> engineVersion;
  /// The network type of ADB PG instance. Only `VPC` supported now.
  final pulumi.Input<String>? instanceNetworkType;
  /// The specification of segment nodes.
  /// * When `db_instance_category` is `HighAvailability`, Valid values: `2C16G`, `4C32G`, `16C128G`.
  /// * When `db_instance_category` is `Basic`, Valid values: `2C8G`, `4C16G`, `8C32G`, `16C64G`.
  final pulumi.Input<String> instanceSpec;
  /// The subscription period. Valid values: [1~12]. It is valid when payment_type is `Subscription`.
  /// **NOTE:** Will not take effect after modifying `payment_duration` for now, if you want to renew a PayAsYouGo instance, need to do in on aliyun console.
  final pulumi.Input<int>? paymentDuration;
  /// The unit of the subscription period. Valid values: `Month`, `Year`. It is valid when payment_type is `Subscription`.
  /// **NOTE:** Will not take effect after modifying `payment_duration_unit` for now, if you want to renew a PayAsYouGo instance, need to do in on aliyun console.
  final pulumi.Input<String>? paymentDurationUnit;
  /// Valid values are `PayAsYouGo`, `Subscription`. Default to `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIpLists;
  /// The number of segment nodes. Minimum is `4`, max is `256`, step is `4`.
  final pulumi.Input<int> segNodeNum;
  /// The disk type of segment nodes. Valid values: `cloud_essd`, `cloud_efficiency`.
  final pulumi.Input<String> segStorageType;
  /// The storage capacity of per segment node. Unit: GB. Minimum is `50`, max is `4000`, step is `50`.
  final pulumi.Input<int> storageSize;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The virtual switch ID to launch ADB PG instances in one VPC.
  final pulumi.Input<String> vswitchId;
  /// The Zone to launch the ADB PG instance. If specified, must be consistent with the zone where the vswitch is located.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ElasticInstanceArgs].
  /// [dbInstanceCategory] The edition of the instance. Valid values: `Basic`, `HighAvailability`. Default value: `HighAvailability`.
  /// [dbInstanceDescription] The description of ADB PG instance. It is a string of 2 to 256 characters.
  /// [encryptionKey] The ID of the encryption key. **Note:** If the `encryption_type` parameter is set to `CloudDisk`, you must specify this parameter to the encryption key that is in the same region as the disk that is specified by the EncryptionType parameter. Otherwise, leave this parameter empty.
  /// [encryptionType] The type of the encryption. Valid values: `CloudDisk`. **Note:** Disk encryption cannot be disabled after it is enabled.
  /// [engine] Database engine: `gpdb`.
  /// [engineVersion] Database version. Valid value is `6.0`.
  /// [instanceNetworkType] The network type of ADB PG instance. Only `VPC` supported now.
  /// [instanceSpec] The specification of segment nodes.
  /// [paymentDuration] The subscription period. Valid values: [1~12]. It is valid when payment_type is `Subscription`.
  /// [paymentDurationUnit] The unit of the subscription period. Valid values: `Month`, `Year`. It is valid when payment_type is `Subscription`.
  /// [paymentType] Valid values are `PayAsYouGo`, `Subscription`. Default to `PayAsYouGo`.
  /// [securityIpLists] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [segNodeNum] The number of segment nodes. Minimum is `4`, max is `256`, step is `4`.
  /// [segStorageType] The disk type of segment nodes. Valid values: `cloud_essd`, `cloud_efficiency`.
  /// [storageSize] The storage capacity of per segment node. Unit: GB. Minimum is `50`, max is `4000`, step is `50`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] The virtual switch ID to launch ADB PG instances in one VPC.
  /// [zoneId] The Zone to launch the ADB PG instance. If specified, must be consistent with the zone where the vswitch is located.
  ElasticInstanceArgs({
    this.dbInstanceCategory,
    this.dbInstanceDescription,
    this.encryptionKey,
    this.encryptionType,
    required this.engine,
    required this.engineVersion,
    this.instanceNetworkType,
    required this.instanceSpec,
    this.paymentDuration,
    this.paymentDurationUnit,
    this.paymentType,
    this.securityIpLists,
    required this.segNodeNum,
    required this.segStorageType,
    required this.storageSize,
    this.tags,
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceCategory': ?dbInstanceCategory,
      'dbInstanceDescription': ?dbInstanceDescription,
      'encryptionKey': ?encryptionKey,
      'encryptionType': ?encryptionType,
      'engine': engine,
      'engineVersion': engineVersion,
      'instanceNetworkType': ?instanceNetworkType,
      'instanceSpec': instanceSpec,
      'paymentDuration': ?paymentDuration,
      'paymentDurationUnit': ?paymentDurationUnit,
      'paymentType': ?paymentType,
      'securityIpLists': ?securityIpLists,
      'segNodeNum': segNodeNum,
      'segStorageType': segStorageType,
      'storageSize': storageSize,
      'tags': ?tags,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ElasticInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ElasticInstanceArgs(
      dbInstanceCategory: map['dbInstanceCategory'] == null ? null : (map['dbInstanceCategory'] as String).input(),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : (map['dbInstanceDescription'] as String).input(),
      encryptionKey: map['encryptionKey'] == null ? null : (map['encryptionKey'] as String).input(),
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType'] as String).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : (map['instanceNetworkType'] as String).input(),
      instanceSpec: (map['instanceSpec'] as String).input(),
      paymentDuration: map['paymentDuration'] == null ? null : (map['paymentDuration'] as int).input(),
      paymentDurationUnit: map['paymentDurationUnit'] == null ? null : (map['paymentDurationUnit'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      securityIpLists: map['securityIpLists'] == null ? null : ((map['securityIpLists'] as List).cast<String>()).input(),
      segNodeNum: (map['segNodeNum'] as int).input(),
      segStorageType: (map['segStorageType'] as String).input(),
      storageSize: (map['storageSize'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

