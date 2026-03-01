// ignore_for_file: unused_element, unnecessary_cast


class GetApisApi {
  /// The ID of the API.
  final String apiId;
  /// The description of the API.
  final String description;
  /// The ID of the API group.
  final String groupId;
  /// The name of the API group.
  final String groupName;
  final String id;
  /// The name of the API.
  final String name;
  /// The region ID of the API.
  final String regionId;

  /// Creates a new [GetApisApi].
  /// [apiId] The ID of the API.
  /// [description] The description of the API.
  /// [groupId] The ID of the API group.
  /// [groupName] The name of the API group.
  /// [id] Required.
  /// [name] The name of the API.
  /// [regionId] The region ID of the API.
  GetApisApi({
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
      apiId: map['apiId'] as String,
      description: map['description'] as String,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

