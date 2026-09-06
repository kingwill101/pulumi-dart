// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIntegrationAccountSession.
class GetIntegrationAccountSessionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The changed time.
  final String? changedTime;
  /// The session content.
  final dynamic content;
  /// The created time.
  final String? createdTime;
  /// The resource id.
  final String? id;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String? name;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String? type;

  /// Creates a new [GetIntegrationAccountSessionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changedTime] The changed time.
  /// [content] The session content.
  /// [createdTime] The created time.
  /// [id] The resource id.
  /// [location] The resource location.
  /// [name] Gets the resource name.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  const GetIntegrationAccountSessionResult({
    this.azureApiVersion,
    this.changedTime,
    this.content,
    this.createdTime,
    this.id,
    this.location,
    this.name,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'changedTime': ?changedTime,
      'content': ?content,
      'createdTime': ?createdTime,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetIntegrationAccountSessionResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountSessionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
