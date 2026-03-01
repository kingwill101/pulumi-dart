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
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? lifecyclePolicyName,
    pulumi.Output<String>? lifecycleRuleName,
    pulumi.Output<List<String>>? paths,
    pulumi.Output<String>? storageType,
  }) :
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      lifecyclePolicyName = pulumi.Input.asOptionalInput<String>(lifecyclePolicyName),
      lifecycleRuleName = pulumi.Input.asOptionalInput<String>(lifecycleRuleName),
      paths = pulumi.Input.asOptionalInput<List<String>>(paths),
      storageType = pulumi.Input.asOptionalInput<String>(storageType);

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
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      lifecyclePolicyName: map['lifecyclePolicyName'] == null ? null : pulumi.Output.create<String>(map['lifecyclePolicyName'] as String),
      lifecycleRuleName: map['lifecycleRuleName'] == null ? null : pulumi.Output.create<String>(map['lifecycleRuleName'] as String),
      paths: map['paths'] == null ? null : pulumi.Output.create<List<String>>((map['paths'] as List).cast<String>()),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
    );
  }
}

