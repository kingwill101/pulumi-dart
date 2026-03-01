// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIntegrationAccountSession.
class GetIntegrationAccountSessionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The changed time.
  final String changedTime;
  /// The session content.
  final dynamic content;
  /// The created time.
  final String createdTime;
  /// The resource id.
  final String id;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String name;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

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
  GetIntegrationAccountSessionResult({
    required this.azureApiVersion,
    required this.changedTime,
    this.content,
    required this.createdTime,
    required this.id,
    this.location,
    required this.name,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'changedTime': changedTime,
      'content': ?content,
      'createdTime': createdTime,
      'id': id,
      'location': ?location,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationAccountSessionResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountSessionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      changedTime: map['changedTime'] as String,
      content: map['content'] == null ? null : map['content'],
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

