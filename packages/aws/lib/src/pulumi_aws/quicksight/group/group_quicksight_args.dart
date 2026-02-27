// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Group.
class GroupQuicksightArgs {
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

  GroupQuicksightArgs({
    this.awsAccountId,
    this.description,
    required this.groupName,
    this.namespace,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['groupName'] = groupName;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GroupQuicksightArgs.fromMap(Map<String, dynamic> map) {
    return GroupQuicksightArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      groupName: pulumi.Input.asInput<String>(map['groupName']),
      namespace: pulumi.Input.asOptionalInput<String>(map['namespace']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
