// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Group.
class GroupArgs4 {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// A description for the group.
  final Input<String>? description;

  /// A name for the group.
  final Input<String> groupName;

  /// The namespace. Currently, you should set this to `default`.
  final Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GroupArgs4({
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

  factory GroupArgs4.fromMap(Map<String, dynamic> map) {
    return GroupArgs4(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      description: Input.asOptionalInput<String>(map['description']),
      groupName: Input.asInput<String>(map['groupName']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
