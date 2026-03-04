// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSystemPolicysPolicy {
  /// Number of references.
  final pulumi.Input<int> attachmentCount;

  /// Creation time.
  final pulumi.Input<String> createTime;

  /// The permission policy description.
  final pulumi.Input<String> description;

  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;

  /// The permission policy name.
  final pulumi.Input<String> policyName;

  /// Permission policy type.
  final pulumi.Input<String> policyType;

  /// Modification time.
  final pulumi.Input<String> updateDate;

  /// Creates a new [GetSystemPolicysPolicy].
  /// [attachmentCount] Number of references.
  /// [createTime] Creation time.
  /// [description] The permission policy description.
  /// [id] The ID of the resource supplied above.
  /// [policyName] The permission policy name.
  /// [policyType] Permission policy type.
  /// [updateDate] Modification time.
  GetSystemPolicysPolicy({
    required this.attachmentCount,
    required this.createTime,
    required this.description,
    required this.id,
    required this.policyName,
    required this.policyType,
    required this.updateDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentCount': attachmentCount,
      'createTime': createTime,
      'description': description,
      'id': id,
      'policyName': policyName,
      'policyType': policyType,
      'updateDate': updateDate,
    };
  }

  factory GetSystemPolicysPolicy.fromMap(Map<String, dynamic> map) {
    return GetSystemPolicysPolicy(
      attachmentCount: pulumi.Input.fromValue(map['attachmentCount'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      updateDate: pulumi.Input.fromValue(map['updateDate'] as String),
    );
  }
}
