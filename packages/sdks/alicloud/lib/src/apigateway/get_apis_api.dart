// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApisApi {
  /// The ID of the API.
  final pulumi.Input<String> apiId;
  /// The description of the API.
  final pulumi.Input<String> description;
  /// The ID of the API group.
  final pulumi.Input<String> groupId;
  /// The name of the API group.
  final pulumi.Input<String> groupName;
  final pulumi.Input<String> id;
  /// The name of the API.
  final pulumi.Input<String> name;
  /// The region ID of the API.
  final pulumi.Input<String> regionId;

  /// Creates a new [GetApisApi].
  /// [apiId] The ID of the API.
  /// [description] The description of the API.
  /// [groupId] The ID of the API group.
  /// [groupName] The name of the API group.
  /// [id] Required.
  /// [name] The name of the API.
  /// [regionId] The region ID of the API.
  const GetApisApi({
    required this.apiId,
    required this.description,
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.name,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'description': description,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
      'name': name,
      'regionId': regionId,
    };
  }

  factory GetApisApi.fromMap(Map<String, dynamic> map) {
    return GetApisApi(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}

