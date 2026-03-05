// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LifecyclePolicy resources.
class LifecyclePolicyState {
  /// The ID of the file system.
  final pulumi.Input<String>? fileSystemId;
  /// The name of the lifecycle management policy.
  final pulumi.Input<String>? lifecyclePolicyName;
  /// The rules in the lifecycle management policy. Valid values: `DEFAULT_ATIME_14`, `DEFAULT_ATIME_30`, `DEFAULT_ATIME_60`, `DEFAULT_ATIME_90`.
  final pulumi.Input<String>? lifecycleRuleName;
  /// The absolute path of the directory for which the lifecycle management policy is configured. Set a maximum of `10` path. The path value must be prefixed by a forward slash (/) and must be an existing path in the mount target.
  final pulumi.Input<List<String>>? paths;
  /// The storage type of the data that is dumped to the IA storage medium. Valid values: `InfrequentAccess`.
  final pulumi.Input<String>? storageType;

  /// Creates a new [LifecyclePolicyState].
  /// [fileSystemId] The ID of the file system.
  /// [lifecyclePolicyName] The name of the lifecycle management policy.
  /// [lifecycleRuleName] The rules in the lifecycle management policy. Valid values: `DEFAULT_ATIME_14`, `DEFAULT_ATIME_30`, `DEFAULT_ATIME_60`, `DEFAULT_ATIME_90`.
  /// [paths] The absolute path of the directory for which the lifecycle management policy is configured. Set a maximum of `10` path. The path value must be prefixed by a forward slash (/) and must be an existing path in the mount target.
  /// [storageType] The storage type of the data that is dumped to the IA storage medium. Valid values: `InfrequentAccess`.
  LifecyclePolicyState({
    this.fileSystemId,
    this.lifecyclePolicyName,
    this.lifecycleRuleName,
    this.paths,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'lifecyclePolicyName': ?lifecyclePolicyName,
      'lifecycleRuleName': ?lifecycleRuleName,
      'paths': ?paths,
      'storageType': ?storageType,
    };
  }

  factory LifecyclePolicyState.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyState(
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecyclePolicyName: (() { final guardedValue = map['lifecyclePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleRuleName: (() { final guardedValue = map['lifecycleRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

