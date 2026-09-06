// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getActionRuleByName.
class GetActionRuleByNameResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Azure resource Id
  final String? id;
  /// Resource location
  final String? location;
  /// Azure resource name
  final String? name;
  /// action rule properties
  final dynamic properties;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure resource type
  final String? type;

  /// Creates a new [GetActionRuleByNameResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource Id
  /// [location] Resource location
  /// [name] Azure resource name
  /// [properties] action rule properties
  /// [tags] Resource tags
  /// [type] Azure resource type
  const GetActionRuleByNameResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetActionRuleByNameResult.fromMap(Map<String, dynamic> map) {
    return GetActionRuleByNameResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
