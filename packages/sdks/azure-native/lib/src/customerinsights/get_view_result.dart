// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getView.
class GetViewResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Date time when view was last modified.
  final String changed;
  /// Date time when view was created.
  final String created;
  /// View definition.
  final String definition;
  /// Localized display name for the view.
  final Map<String, String>? displayName;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// the hub name.
  final String tenantId;
  /// Resource type.
  final String type;
  /// the user ID.
  final String? userId;
  /// Name of the view.
  final String viewName;

  /// Creates a new [GetViewResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changed] Date time when view was last modified.
  /// [created] Date time when view was created.
  /// [definition] View definition.
  /// [displayName] Localized display name for the view.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [tenantId] the hub name.
  /// [type] Resource type.
  /// [userId] the user ID.
  /// [viewName] Name of the view.
  const GetViewResult({
    required this.azureApiVersion,
    required this.changed,
    required this.created,
    required this.definition,
    this.displayName,
    required this.id,
    required this.name,
    required this.tenantId,
    required this.type,
    this.userId,
    required this.viewName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'changed': changed,
      'created': created,
      'definition': definition,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'tenantId': tenantId,
      'type': type,
      'userId': ?userId,
      'viewName': viewName,
    };
  }

  factory GetViewResult.fromMap(Map<String, dynamic> map) {
    return GetViewResult(
      azureApiVersion: map['azureApiVersion'] as String,
      changed: map['changed'] as String,
      created: map['created'] as String,
      definition: map['definition'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      viewName: map['viewName'] as String,
    );
  }
}

