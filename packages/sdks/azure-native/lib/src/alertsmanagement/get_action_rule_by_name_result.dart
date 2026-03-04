// ignore_for_file: unused_element, unnecessary_cast

import 'action_group_response.dart';

/// Result data returned by getActionRuleByName.
class GetActionRuleByNameResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Azure resource Id
  final String id;

  /// Resource location
  final String location;

  /// Azure resource name
  final String name;

  /// action rule properties
  final ActionGroupResponse properties;

  /// Resource tags
  final Map<String, String>? tags;

  /// Azure resource type
  final String type;

  /// Creates a new [GetActionRuleByNameResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource Id
  /// [location] Resource location
  /// [name] Azure resource name
  /// [properties] action rule properties
  /// [tags] Resource tags
  /// [type] Azure resource type
  GetActionRuleByNameResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetActionRuleByNameResult.fromMap(Map<String, dynamic> map) {
    return GetActionRuleByNameResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: ActionGroupResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
