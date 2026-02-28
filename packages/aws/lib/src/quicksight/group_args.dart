// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_quicksight_group_group_args_doc}
class GroupArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// A description for the group.
  final pulumi.Input<String>? description;
  /// A name for the group.
  final pulumi.Input<String> groupName;
  /// The namespace. Currently, you should set this to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [description] A description for the group.
  /// [groupName] A name for the group.
  /// [namespace] The namespace. Currently, you should set this to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupArgs({
    String? awsAccountId,
    String? description,
    required String groupName,
    String? namespace,
    String? region,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      groupName = pulumi.Input.asInput<String>(groupName),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'description': ?description,
      'groupName': groupName,
      'namespace': ?namespace,
      'region': ?region,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      awsAccountId: map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      groupName: map['groupName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

