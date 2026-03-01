// ignore_for_file: unused_element, unnecessary_cast


class GetRolesRole {
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  final String arn;
  /// The policy that specifies the trusted entity to assume the RAM role.
  final String assumeRolePolicyDocument;
  /// The creation time.
  final String createDate;
  /// The description of the RAM role.
  final String description;
  /// The policy that specifies the trusted entity to assume the RAM role.
  final String document;
  /// The ID of the RAM role.
  final String id;
  /// The name of the RAM role.
  final String name;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The update time.
  final String updateDate;

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
      arn: map['arn'] as String,
      assumeRolePolicyDocument: map['assumeRolePolicyDocument'] as String,
      createDate: map['createDate'] as String,
      description: map['description'] as String,
      document: map['document'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updateDate: map['updateDate'] as String,
    );
  }
}

