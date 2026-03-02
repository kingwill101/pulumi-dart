// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_instance_instance_args_doc}
class InstanceArgs {
  /// Two instances on a single account in the same region cannot have the same name. The length must be 3 to 64 characters. Chinese characters, English letters digits and hyphen are allowed.
  final pulumi.Input<String>? instanceName;
  /// Replaced by `instance_name` after version 1.97.0.
  final pulumi.Input<String>? name;
  /// This attribute is a concise description of instance. The length cannot exceed 128.
  final pulumi.Input<String>? remark;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceArgs].
  /// [instanceName] Two instances on a single account in the same region cannot have the same name. The length must be 3 to 64 characters. Chinese characters, English letters digits and hyphen are allowed.
  /// [name] Replaced by `instance_name` after version 1.97.0.
  /// [remark] This attribute is a concise description of instance. The length cannot exceed 128.
  /// [tags] A mapping of tags to assign to the resource.
  InstanceArgs({
    this.instanceName,
    this.name,
    this.remark,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'name': ?name,
      'remark': ?remark,
      'tags': ?tags,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      remark: map['remark'] == null ? null : (map['remark'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

