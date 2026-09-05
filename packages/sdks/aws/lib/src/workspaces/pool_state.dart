// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_application_setting.dart';
import 'pool_capacity.dart';
import 'pool_capacity_status.dart';
import 'pool_timeout_setting.dart';
import 'pool_timeouts.dart';

/// Input properties used for looking up and filtering Pool resources.
class PoolState {
  /// Application settings configuration for the WorkSpaces Pool. See `applicationSettings` Block below.
  final pulumi.Input<List<PoolApplicationSetting>?>? applicationSettings;
  /// ID of the bundle for the WorkSpaces Pool.
  final pulumi.Input<String?>? bundleId;
  /// Capacity configuration for the WorkSpaces Pool. See `capacity` below.
  final pulumi.Input<PoolCapacity?>? capacity;
  /// Capacity status of the WorkSpaces Pool. See `capacityStatus` Block below.
  final pulumi.Input<List<PoolCapacityStatus>?>? capacityStatuses;
  /// Date and time the WorkSpaces Pool was created.
  final pulumi.Input<String?>? createdAt;
  /// Description of the WorkSpaces Pool.
  final pulumi.Input<String?>? description;
  /// ID of the directory for the WorkSpaces Pool.
  final pulumi.Input<String?>? directoryId;
  /// ARN of the WorkSpaces Pool.
  final pulumi.Input<String?>? poolArn;
  /// ID of the WorkSpaces Pool.
  final pulumi.Input<String?>? poolId;
  /// Name of the WorkSpaces Pool. This cannot be changed after creation.
  final pulumi.Input<String?>? poolName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Running mode of the WorkSpaces Pool. Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? runningMode;
  /// S3 bucket where application settings are stored when `applicationSettings` is enabled.
  final pulumi.Input<String?>? s3BucketName;
  /// Current state of the WorkSpaces Pool.
  final pulumi.Input<String?>? state;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Timeout settings configuration for the WorkSpaces Pool. See `timeoutSettings` Block below.
  final pulumi.Input<List<PoolTimeoutSetting>?>? timeoutSettings;
  final pulumi.Input<PoolTimeouts?>? timeouts;

  /// Creates a new [PoolState].
  /// [applicationSettings] Application settings configuration for the WorkSpaces Pool. See `applicationSettings` Block below.
  /// [bundleId] ID of the bundle for the WorkSpaces Pool.
  /// [capacity] Capacity configuration for the WorkSpaces Pool. See `capacity` below.
  /// [capacityStatuses] Capacity status of the WorkSpaces Pool. See `capacityStatus` Block below.
  /// [createdAt] Date and time the WorkSpaces Pool was created.
  /// [description] Description of the WorkSpaces Pool.
  /// [directoryId] ID of the directory for the WorkSpaces Pool.
  /// [poolArn] ARN of the WorkSpaces Pool.
  /// [poolId] ID of the WorkSpaces Pool.
  /// [poolName] Name of the WorkSpaces Pool. This cannot be changed after creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runningMode] Running mode of the WorkSpaces Pool. Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  /// [s3BucketName] S3 bucket where application settings are stored when `applicationSettings` is enabled.
  /// [state] Current state of the WorkSpaces Pool.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeoutSettings] Timeout settings configuration for the WorkSpaces Pool. See `timeoutSettings` Block below.
  /// [timeouts] Optional.
  const PoolState({
    this.applicationSettings,
    this.bundleId,
    this.capacity,
    this.capacityStatuses,
    this.createdAt,
    this.description,
    this.directoryId,
    this.poolArn,
    this.poolId,
    this.poolName,
    this.region,
    this.runningMode,
    this.s3BucketName,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeoutSettings,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSettings': ?pulumi.Input.mapOptionalInputValue<List<PoolApplicationSetting>, List<Map<String, dynamic>>>(applicationSettings, (value) => pulumi.Input.encodeList<PoolApplicationSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bundleId': ?bundleId,
      'capacity': ?pulumi.Input.mapOptionalInputValue<PoolCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'capacityStatuses': ?pulumi.Input.mapOptionalInputValue<List<PoolCapacityStatus>, List<Map<String, dynamic>>>(capacityStatuses, (value) => pulumi.Input.encodeList<PoolCapacityStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'description': ?description,
      'directoryId': ?directoryId,
      'poolArn': ?poolArn,
      'poolId': ?poolId,
      'poolName': ?poolName,
      'region': ?region,
      'runningMode': ?runningMode,
      's3BucketName': ?s3BucketName,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeoutSettings': ?pulumi.Input.mapOptionalInputValue<List<PoolTimeoutSetting>, List<Map<String, dynamic>>>(timeoutSettings, (value) => pulumi.Input.encodeList<PoolTimeoutSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PoolTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory PoolState.fromMap(Map<String, dynamic> map) {
    return PoolState(
      applicationSettings: (() { final guardedValue = map['applicationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolApplicationSetting>(guardedValue, (value) => PoolApplicationSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacityStatuses: (() { final guardedValue = map['capacityStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolCapacityStatus>(guardedValue, (value) => PoolCapacityStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolArn: (() { final guardedValue = map['poolArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runningMode: (() { final guardedValue = map['runningMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketName: (() { final guardedValue = map['s3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeoutSettings: (() { final guardedValue = map['timeoutSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolTimeoutSetting>(guardedValue, (value) => PoolTimeoutSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
