// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRolesRole {
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  final pulumi.Input<String> arn;

  /// The policy that specifies the trusted entity to assume the RAM role.
  final pulumi.Input<String> assumeRolePolicyDocument;

  /// The creation time.
  final pulumi.Input<String> createDate;

  /// The description of the RAM role.
  final pulumi.Input<String> description;

  /// The policy that specifies the trusted entity to assume the RAM role.
  final pulumi.Input<String> document;

  /// The ID of the RAM role.
  final pulumi.Input<String> id;

  /// The name of the RAM role.
  final pulumi.Input<String> name;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// The update time.
  final pulumi.Input<String> updateDate;

  /// Creates a new [GetRolesRole].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the RAM role.
  /// [assumeRolePolicyDocument] The policy that specifies the trusted entity to assume the RAM role.
  /// [createDate] The creation time.
  /// [description] The description of the RAM role.
  /// [document] The policy that specifies the trusted entity to assume the RAM role.
  /// [id] The ID of the RAM role.
  /// [name] The name of the RAM role.
  /// [tags] A mapping of tags to assign to the resource.
  /// [updateDate] The update time.
  GetRolesRole({
    required this.arn,
    required this.assumeRolePolicyDocument,
    required this.createDate,
    required this.description,
    required this.document,
    required this.id,
    required this.name,
    required this.tags,
    required this.updateDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'assumeRolePolicyDocument': assumeRolePolicyDocument,
      'createDate': createDate,
      'description': description,
      'document': document,
      'id': id,
      'name': name,
      'tags': tags,
      'updateDate': updateDate,
    };
  }

  factory GetRolesRole.fromMap(Map<String, dynamic> map) {
    return GetRolesRole(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      assumeRolePolicyDocument: pulumi.Input.fromValue(
        map['assumeRolePolicyDocument'] as String,
      ),
      createDate: pulumi.Input.fromValue(map['createDate'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      document: pulumi.Input.fromValue(map['document'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      updateDate: pulumi.Input.fromValue(map['updateDate'] as String),
    );
  }
}
