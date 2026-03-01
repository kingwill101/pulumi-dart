// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ElasticInstance resources.
class ElasticInstanceState {
  /// ADB PG instance connection string.
  final pulumi.Input<String>? connectionString;
  /// The edition of the instance. Valid values: `Basic`, `HighAvailability`. Default value: `HighAvailability`.
  final pulumi.Input<String>? dbInstanceCategory;
  /// The description of ADB PG instance. It is a string of 2 to 256 characters.
  final pulumi.Input<String>? dbInstanceDescription;
  /// The ID of the encryption key. **Note:** If the `encryption_type` parameter is set to `CloudDisk`, you must specify this parameter to the encryption key that is in the same region as the disk that is specified by the EncryptionType parameter. Otherwise, leave this parameter empty.
  final pulumi.Input<String>? encryptionKey;
  /// The type of the encryption. Valid values: `CloudDisk`. **Note:** Disk encryption cannot be disabled after it is enabled.
  final pulumi.Input<String>? encryptionType;
  /// Database engine: `gpdb`.
  final pulumi.Input<String>? engine;
  /// Database version. Valid value is `6.0`.
  final pulumi.Input<String>? engineVersion;
  /// The network type of ADB PG instance. Only `VPC` supported now.
  final pulumi.Input<String>? instanceNetworkType;
  /// The specification of segment nodes.
  /// * When `db_instance_category` is `HighAvailability`, Valid values: `2C16G`, `4C32G`, `16C128G`.
  /// * When `db_instance_category` is `Basic`, Valid values: `2C8G`, `4C16G`, `8C32G`, `16C64G`.
  final pulumi.Input<String>? instanceSpec;
  /// The subscription period. Valid values: [1~12]. It is valid when payment_type is `Subscription`.
  /// **NOTE:** Will not take effect after modifying `payment_duration` for now, if you want to renew a PayAsYouGo instance, need to do in on aliyun console.
  final pulumi.Input<int>? paymentDuration;
  /// The unit of the subscription period. Valid values: `Month`, `Year`. It is valid when payment_type is `Subscription`.
  /// **NOTE:** Will not take effect after modifying `payment_duration_unit` for now, if you want to renew a PayAsYouGo instance, need to do in on aliyun console.
  final pulumi.Input<String>? paymentDurationUnit;
  /// Valid values are `PayAsYouGo`, `Subscription`. Default to `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// (Available since v1.196.0) The connection port of the instance.
  final pulumi.Input<String>? port;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIpLists;
  /// The number of segment nodes. Minimum is `4`, max is `256`, step is `4`.
  final pulumi.Input<int>? segNodeNum;
  /// The disk type of segment nodes. Valid values: `cloud_essd`, `cloud_efficiency`.
  final pulumi.Input<String>? segStorageType;
  /// Instance status.
  final pulumi.Input<String>? status;
  /// The storage capacity of per segment node. Unit: GB. Minimum is `50`, max is `4000`, step is `50`.
  final pulumi.Input<int>? storageSize;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The virtual switch ID to launch ADB PG instances in one VPC.
  final pulumi.Input<String>? vswitchId;
  /// The Zone to launch the ADB PG instance. If specified, must be consistent with the zone where the vswitch is located.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ElasticInstanceState].
  /// [connectionString] ADB PG instance connection string.
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
  /// [port] (Available since v1.196.0) The connection port of the instance.
  /// [securityIpLists] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [segNodeNum] The number of segment nodes. Minimum is `4`, max is `256`, step is `4`.
  /// [segStorageType] The disk type of segment nodes. Valid values: `cloud_essd`, `cloud_efficiency`.
  /// [status] Instance status.
  /// [storageSize] The storage capacity of per segment node. Unit: GB. Minimum is `50`, max is `4000`, step is `50`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] The virtual switch ID to launch ADB PG instances in one VPC.
  /// [zoneId] The Zone to launch the ADB PG instance. If specified, must be consistent with the zone where the vswitch is located.
  ElasticInstanceState({
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? dbInstanceCategory,
    pulumi.Output<String>? dbInstanceDescription,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? encryptionType,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? instanceNetworkType,
    pulumi.Output<String>? instanceSpec,
    pulumi.Output<int>? paymentDuration,
    pulumi.Output<String>? paymentDurationUnit,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? port,
    pulumi.Output<List<String>>? securityIpLists,
    pulumi.Output<int>? segNodeNum,
    pulumi.Output<String>? segStorageType,
    pulumi.Output<String>? status,
    pulumi.Output<int>? storageSize,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dbInstanceCategory = pulumi.Input.asOptionalInput<String>(dbInstanceCategory),
      dbInstanceDescription = pulumi.Input.asOptionalInput<String>(dbInstanceDescription),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      encryptionType = pulumi.Input.asOptionalInput<String>(encryptionType),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      instanceNetworkType = pulumi.Input.asOptionalInput<String>(instanceNetworkType),
      instanceSpec = pulumi.Input.asOptionalInput<String>(instanceSpec),
      paymentDuration = pulumi.Input.asOptionalInput<int>(paymentDuration),
      paymentDurationUnit = pulumi.Input.asOptionalInput<String>(paymentDurationUnit),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      port = pulumi.Input.asOptionalInput<String>(port),
      securityIpLists = pulumi.Input.asOptionalInput<List<String>>(securityIpLists),
      segNodeNum = pulumi.Input.asOptionalInput<int>(segNodeNum),
      segStorageType = pulumi.Input.asOptionalInput<String>(segStorageType),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageSize = pulumi.Input.asOptionalInput<int>(storageSize),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'dbInstanceCategory': ?dbInstanceCategory,
      'dbInstanceDescription': ?dbInstanceDescription,
      'encryptionKey': ?encryptionKey,
      'encryptionType': ?encryptionType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'instanceNetworkType': ?instanceNetworkType,
      'instanceSpec': ?instanceSpec,
      'paymentDuration': ?paymentDuration,
      'paymentDurationUnit': ?paymentDurationUnit,
      'paymentType': ?paymentType,
      'port': ?port,
      'securityIpLists': ?securityIpLists,
      'segNodeNum': ?segNodeNum,
      'segStorageType': ?segStorageType,
      'status': ?status,
      'storageSize': ?storageSize,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ElasticInstanceState.fromMap(Map<String, dynamic> map) {
    return ElasticInstanceState(
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      dbInstanceCategory: map['dbInstanceCategory'] == null ? null : pulumi.Output.create<String>(map['dbInstanceCategory'] as String),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : pulumi.Output.create<String>(map['dbInstanceDescription'] as String),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      encryptionType: map['encryptionType'] == null ? null : pulumi.Output.create<String>(map['encryptionType'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : pulumi.Output.create<String>(map['instanceNetworkType'] as String),
      instanceSpec: map['instanceSpec'] == null ? null : pulumi.Output.create<String>(map['instanceSpec'] as String),
      paymentDuration: map['paymentDuration'] == null ? null : pulumi.Output.create<int>(map['paymentDuration'] as int),
      paymentDurationUnit: map['paymentDurationUnit'] == null ? null : pulumi.Output.create<String>(map['paymentDurationUnit'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      securityIpLists: map['securityIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['securityIpLists'] as List).cast<String>()),
      segNodeNum: map['segNodeNum'] == null ? null : pulumi.Output.create<int>(map['segNodeNum'] as int),
      segStorageType: map['segStorageType'] == null ? null : pulumi.Output.create<String>(map['segStorageType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageSize: map['storageSize'] == null ? null : pulumi.Output.create<int>(map['storageSize'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

