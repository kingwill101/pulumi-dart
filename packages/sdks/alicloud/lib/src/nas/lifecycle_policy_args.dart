// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_lifecycle_policy_lifecycle_policy_args_doc}
/// The set of arguments for LifecyclePolicy.
/// {@endtemplate}
/// {@macro pulumi_nas_lifecycle_policy_lifecycle_policy_args_doc}
class LifecyclePolicyArgs {
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// The name of the lifecycle management policy.
  final pulumi.Input<String> lifecyclePolicyName;
  /// The rules in the lifecycle management policy. Valid values: `DEFAULT_ATIME_14`, `DEFAULT_ATIME_30`, `DEFAULT_ATIME_60`, `DEFAULT_ATIME_90`.
  final pulumi.Input<String> lifecycleRuleName;
  /// The absolute path of the directory for which the lifecycle management policy is configured. Set a maximum of `10` path. The path value must be prefixed by a forward slash (/) and must be an existing path in the mount target.
  final pulumi.Input<List<String>> paths;
  /// The storage type of the data that is dumped to the IA storage medium. Valid values: `InfrequentAccess`.
  final pulumi.Input<String> storageType;

  /// Creates a new [LifecyclePolicyArgs].
  /// [fileSystemId] The ID of the file system.
  /// [lifecyclePolicyName] The name of the lifecycle management policy.
  /// [lifecycleRuleName] The rules in the lifecycle management policy. Valid values: `DEFAULT_ATIME_14`, `DEFAULT_ATIME_30`, `DEFAULT_ATIME_60`, `DEFAULT_ATIME_90`.
  /// [paths] The absolute path of the directory for which the lifecycle management policy is configured. Set a maximum of `10` path. The path value must be prefixed by a forward slash (/) and must be an existing path in the mount target.
  /// [storageType] The storage type of the data that is dumped to the IA storage medium. Valid values: `InfrequentAccess`.
  LifecyclePolicyArgs({
    required this.fileSystemId,
    required this.lifecyclePolicyName,
    required this.lifecycleRuleName,
    required this.paths,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'lifecyclePolicyName': lifecyclePolicyName,
      'lifecycleRuleName': lifecycleRuleName,
      'paths': paths,
      'storageType': storageType,
    };
  }

  factory LifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyArgs(
      fileSystemId: (map['fileSystemId'] as String).input(),
      lifecyclePolicyName: (map['lifecyclePolicyName'] as String).input(),
      lifecycleRuleName: (map['lifecycleRuleName'] as String).input(),
      paths: ((map['paths'] as List).cast<String>()).input(),
      storageType: (map['storageType'] as String).input(),
    );
  }
}

