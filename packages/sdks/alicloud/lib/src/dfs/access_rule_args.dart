// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_access_rule_access_rule_args_doc}
/// The set of arguments for AccessRule.
/// {@endtemplate}
/// {@macro pulumi_dfs_access_rule_access_rule_args_doc}
class AccessRuleArgs {
  /// Permission group resource ID. You must specify the permission group ID when creating a permission rule.
  final pulumi.Input<String> accessGroupId;
  /// Permission rule description.  No more than 32 characters in length.
  final pulumi.Input<String>? description;
  /// The IP address or network segment of the authorized object.
  final pulumi.Input<String> networkSegment;
  /// Permission rule priority. When the same authorization object matches multiple rules, the high-priority rule takes effect. Value range: 1~100,1 is the highest priority.
  final pulumi.Input<int> priority;
  /// The read and write permissions of the authorized object on the file system. Value: RDWR: readable and writable RDONLY: Read only.
  final pulumi.Input<String> rwAccessType;

  /// Creates a new [AccessRuleArgs].
  /// [accessGroupId] Permission group resource ID. You must specify the permission group ID when creating a permission rule.
  /// [description] Permission rule description.  No more than 32 characters in length.
  /// [networkSegment] The IP address or network segment of the authorized object.
  /// [priority] Permission rule priority. When the same authorization object matches multiple rules, the high-priority rule takes effect. Value range: 1~100,1 is the highest priority.
  /// [rwAccessType] The read and write permissions of the authorized object on the file system. Value: RDWR: readable and writable RDONLY: Read only.
  AccessRuleArgs({
    required pulumi.Output<String> accessGroupId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> networkSegment,
    required pulumi.Output<int> priority,
    required pulumi.Output<String> rwAccessType,
  }) :
      accessGroupId = pulumi.Input.asInput<String>(accessGroupId),
      description = pulumi.Input.asOptionalInput<String>(description),
      networkSegment = pulumi.Input.asInput<String>(networkSegment),
      priority = pulumi.Input.asInput<int>(priority),
      rwAccessType = pulumi.Input.asInput<String>(rwAccessType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': accessGroupId,
      'description': ?description,
      'networkSegment': networkSegment,
      'priority': priority,
      'rwAccessType': rwAccessType,
    };
  }

  factory AccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return AccessRuleArgs(
      accessGroupId: pulumi.Output.create<String>(map['accessGroupId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      networkSegment: pulumi.Output.create<String>(map['networkSegment'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      rwAccessType: pulumi.Output.create<String>(map['rwAccessType'] as String),
    );
  }
}

