// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tsdb_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_tsdb_instance_instance_args_doc}
class InstanceArgs {
  /// The app key.
  final pulumi.Input<String>? appKey;
  /// The disk type of instance. Valid when the engine type is `tsdb_influxdb`. `cloud_ssd` refers to SSD disk, `cloud_efficiency` refers to efficiency disk, `cloud_essd` refers to ESSD PL1 disk. Valid values: `cloud_efficiency`, `cloud_essd`, `cloud_ssd`.
  final pulumi.Input<String>? diskCategory;
  /// The duration.
  final pulumi.Input<String>? duration;
  /// The engine type of instance Enumerative: `tsdb_tsdb` refers to TSDB, `tsdb_influxdb` refers to TSDB for InfluxDB️.
  final pulumi.Input<String>? engineType;
  /// The alias of the instance.
  final pulumi.Input<String>? instanceAlias;
  /// The specification of the instance.
  /// - Following enumerative value for TSDB for InfluxDB️ standart edition:
  /// - `influxdata.n1.mxlarge` refers to 2 CPU 8GB memory;
  /// - `influxdata.n1.xlarge` refers to 4 CPU 16GB memory;
  /// - `influxdata.n1.2xlarge` refers to 8 CPU 32 GB memory;
  /// - `influxdata.n1.4xlarge` refers to 16 CPU 64 GB memory;
  /// - `influxdata.n1.8xlarge` refers to 32 CPU 128 GB memory;
  /// - `influxdata.n1.16xlarge` refers to 64 CPU 256 GB memory.
  /// - Following enumerative value for TSDB for InfluxDB High-availability edition:
  /// - `influxdata.n1.mxlarge_ha` refers to 2 CPU 8GB memory;
  /// - `influxdata.n1.xlarge_ha` refers to 4 CPU 16GB memory;
  /// - `influxdata.n1.2xlarge_ha` refers to 8 CPU 32 GB memory;
  /// - `influxdata.n1.4xlarge_ha` refers to 16 CPU 64 GB memory;
  /// - `influxdata.n1.8xlarge_ha` refers to 32 CPU 128 GB memory;
  /// - `influxdata.n1.16xlarge_ha` refers to 64 CPU 256 GB memory.
  /// - Following enumerative value for TSDB:
  /// - `tsdb.1x.basic` refers to basic edition I;
  /// - `tsdb.3x.basic` refers to basic edition II;
  /// - `tsdb.4x.basic` refers to basic edtion III;
  /// - `tsdb.12x.standard` refers to standard edition I;
  /// - `tsdb.24x.standard` refers to standard edition II;
  /// - `tsdb.48x.large` refers to ultimate edition I;
  /// - `tsdb.96x.large` refers to ultimate edition II.
  final pulumi.Input<String> instanceClass;
  /// The storage capacity of the instance. Unit: GB. For example, the value 50 indicates 50 GB. Does not support shrink storage.
  final pulumi.Input<String> instanceStorage;
  /// The billing method. Valid values: `PayAsYouGo` and `Subscription`. The `PayAsYouGo` value indicates the pay-as-you-go method, and the `Subscription` value indicates the subscription method.
  final pulumi.Input<String> paymentType;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceArgs].
  /// [appKey] The app key.
  /// [diskCategory] The disk type of instance. Valid when the engine type is `tsdb_influxdb`. `cloud_ssd` refers to SSD disk, `cloud_efficiency` refers to efficiency disk, `cloud_essd` refers to ESSD PL1 disk. Valid values: `cloud_efficiency`, `cloud_essd`, `cloud_ssd`.
  /// [duration] The duration.
  /// [engineType] The engine type of instance Enumerative: `tsdb_tsdb` refers to TSDB, `tsdb_influxdb` refers to TSDB for InfluxDB️.
  /// [instanceAlias] The alias of the instance.
  /// [instanceClass] The specification of the instance.
  /// [instanceStorage] The storage capacity of the instance. Unit: GB. For example, the value 50 indicates 50 GB. Does not support shrink storage.
  /// [paymentType] The billing method. Valid values: `PayAsYouGo` and `Subscription`. The `PayAsYouGo` value indicates the pay-as-you-go method, and the `Subscription` value indicates the subscription method.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the instance.
  InstanceArgs({
    String? appKey,
    String? diskCategory,
    String? duration,
    String? engineType,
    String? instanceAlias,
    required String instanceClass,
    required String instanceStorage,
    required String paymentType,
    required String vswitchId,
    String? zoneId,
  }) :
      appKey = pulumi.Input.asOptionalInput<String>(appKey),
      diskCategory = pulumi.Input.asOptionalInput<String>(diskCategory),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      engineType = pulumi.Input.asOptionalInput<String>(engineType),
      instanceAlias = pulumi.Input.asOptionalInput<String>(instanceAlias),
      instanceClass = pulumi.Input.asInput<String>(instanceClass),
      instanceStorage = pulumi.Input.asInput<String>(instanceStorage),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appKey': ?appKey,
      'diskCategory': ?diskCategory,
      'duration': ?duration,
      'engineType': ?engineType,
      'instanceAlias': ?instanceAlias,
      'instanceClass': instanceClass,
      'instanceStorage': instanceStorage,
      'paymentType': paymentType,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      appKey: map['appKey'] == null ? null : map['appKey'] as String,
      diskCategory: map['diskCategory'] == null ? null : map['diskCategory'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      engineType: map['engineType'] == null ? null : map['engineType'] as String,
      instanceAlias: map['instanceAlias'] == null ? null : map['instanceAlias'] as String,
      instanceClass: map['instanceClass'] as String,
      instanceStorage: map['instanceStorage'] as String,
      paymentType: map['paymentType'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

