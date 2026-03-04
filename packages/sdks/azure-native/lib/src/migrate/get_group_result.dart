// ignore_for_file: unused_element, unnecessary_cast

import 'group_properties_response.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// For optimistic concurrency control.
  final String? eTag;

  /// Path reference to this group. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}
  final String id;

  /// Name of the group.
  final String name;

  /// Properties of the group.
  final GroupPropertiesResponse properties;

  /// Type of the object = [Microsoft.Migrate/assessmentProjects/groups].
  final String type;

  /// Creates a new [GetGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] For optimistic concurrency control.
  /// [id] Path reference to this group. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}
  /// [name] Name of the group.
  /// [properties] Properties of the group.
  /// [type] Type of the object = [Microsoft.Migrate/assessmentProjects/groups].
  GetGroupResult({
    required this.azureApiVersion,
    this.eTag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': ?eTag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: (() {
        final guardedValue = map['eTag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      properties: GroupPropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
