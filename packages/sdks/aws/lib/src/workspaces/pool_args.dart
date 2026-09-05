// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_application_setting.dart';
import 'pool_capacity.dart';
import 'pool_timeout_setting.dart';
import 'pool_timeouts.dart';

/// {@template pulumi_workspaces_pool_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_workspaces_pool_pool_args_doc}
class PoolArgs {
  /// Application settings configuration for the WorkSpaces Pool. See `applicationSettings` Block below.
  final pulumi.Input<List<PoolApplicationSetting>?>? applicationSettings;
  /// ID of the bundle for the WorkSpaces Pool.
  final pulumi.Input<String> bundleId;
  /// Capacity configuration for the WorkSpaces Pool. See `capacity` below.
  final pulumi.Input<PoolCapacity?>? capacity;
  /// Description of the WorkSpaces Pool.
  final pulumi.Input<String> description;
  /// ID of the directory for the WorkSpaces Pool.
  final pulumi.Input<String> directoryId;
  /// Name of the WorkSpaces Pool. This cannot be changed after creation.
  final pulumi.Input<String> poolName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Running mode of the WorkSpaces Pool. Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> runningMode;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Timeout settings configuration for the WorkSpaces Pool. See `timeoutSettings` Block below.
  final pulumi.Input<List<PoolTimeoutSetting>?>? timeoutSettings;
  final pulumi.Input<PoolTimeouts?>? timeouts;

  /// Creates a new [PoolArgs].
  /// [applicationSettings] Application settings configuration for the WorkSpaces Pool. See `applicationSettings` Block below.
  /// [bundleId] ID of the bundle for the WorkSpaces Pool.
  /// [capacity] Capacity configuration for the WorkSpaces Pool. See `capacity` below.
  /// [description] Description of the WorkSpaces Pool.
  /// [directoryId] ID of the directory for the WorkSpaces Pool.
  /// [poolName] Name of the WorkSpaces Pool. This cannot be changed after creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runningMode] Running mode of the WorkSpaces Pool. Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeoutSettings] Timeout settings configuration for the WorkSpaces Pool. See `timeoutSettings` Block below.
  /// [timeouts] Optional.
  const PoolArgs({
    this.applicationSettings,
    required this.bundleId,
    this.capacity,
    required this.description,
    required this.directoryId,
    required this.poolName,
    this.region,
    required this.runningMode,
    this.tags,
    this.timeoutSettings,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSettings': ?pulumi.Input.mapOptionalInputValue<List<PoolApplicationSetting>, List<Map<String, dynamic>>>(applicationSettings, (value) => pulumi.Input.encodeList<PoolApplicationSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bundleId': bundleId,
      'capacity': ?pulumi.Input.mapOptionalInputValue<PoolCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'description': description,
      'directoryId': directoryId,
      'poolName': poolName,
      'region': ?region,
      'runningMode': runningMode,
      'tags': ?tags,
      'timeoutSettings': ?pulumi.Input.mapOptionalInputValue<List<PoolTimeoutSetting>, List<Map<String, dynamic>>>(timeoutSettings, (value) => pulumi.Input.encodeList<PoolTimeoutSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PoolTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      applicationSettings: (() { final guardedValue = map['applicationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolApplicationSetting>(guardedValue, (value) => PoolApplicationSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bundleId: pulumi.Input.fromValue(map['bundleId'] as String),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runningMode: pulumi.Input.fromValue(map['runningMode'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeoutSettings: (() { final guardedValue = map['timeoutSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolTimeoutSetting>(guardedValue, (value) => PoolTimeoutSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
