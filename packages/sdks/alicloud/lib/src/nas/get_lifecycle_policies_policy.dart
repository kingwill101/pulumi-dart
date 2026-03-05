// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLifecyclePoliciesPolicy {
  /// The time when the lifecycle management policy was created.
  final pulumi.Input<String> createTime;
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// The ID of the Lifecycle Policy. Its value is same as Queue Name.
  final pulumi.Input<String> id;
  /// The name of the lifecycle management policy.
  final pulumi.Input<String> lifecyclePolicyName;
  /// The rules in the lifecycle management policy.
  final pulumi.Input<String> lifecycleRuleName;
  /// The list of absolute paths for multiple directories. In this case, you can associate a lifecycle management policy with each directory.
  final pulumi.Input<List<String>> paths;
  /// The storage type of the data that is dumped to the IA storage medium.
  final pulumi.Input<String> storageType;

  /// Creates a new [GetLifecyclePoliciesPolicy].
  /// [createTime] The time when the lifecycle management policy was created.
  /// [fileSystemId] The ID of the file system.
  /// [id] The ID of the Lifecycle Policy. Its value is same as Queue Name.
  /// [lifecyclePolicyName] The name of the lifecycle management policy.
  /// [lifecycleRuleName] The rules in the lifecycle management policy.
  /// [paths] The list of absolute paths for multiple directories. In this case, you can associate a lifecycle management policy with each directory.
  /// [storageType] The storage type of the data that is dumped to the IA storage medium.
  GetLifecyclePoliciesPolicy({
    required this.createTime,
    required this.fileSystemId,
    required this.id,
    required this.lifecyclePolicyName,
    required this.lifecycleRuleName,
    required this.paths,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'fileSystemId': fileSystemId,
      'id': id,
      'lifecyclePolicyName': lifecyclePolicyName,
      'lifecycleRuleName': lifecycleRuleName,
      'paths': paths,
      'storageType': storageType,
    };
  }

  factory GetLifecyclePoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePoliciesPolicy(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lifecyclePolicyName: pulumi.Input.fromValue(map['lifecyclePolicyName'] as String),
      lifecycleRuleName: pulumi.Input.fromValue(map['lifecycleRuleName'] as String),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}

