// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getView.
class GetViewResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Date time when view was last modified.
  final String? changed;
  /// Date time when view was created.
  final String? created;
  /// View definition.
  final String? definition;
  /// Localized display name for the view.
  final Map<String, String>? displayName;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// the hub name.
  final String? tenantId;
  /// Resource type.
  final String? type;
  /// the user ID.
  final String? userId;
  /// Name of the view.
  final String? viewName;

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
    this.azureApiVersion,
    this.changed,
    this.created,
    this.definition,
    this.displayName,
    this.id,
    this.name,
    this.tenantId,
    this.type,
    this.userId,
    this.viewName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'changed': ?changed,
      'created': ?created,
      'definition': ?definition,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'tenantId': ?tenantId,
      'type': ?type,
      'userId': ?userId,
      'viewName': ?viewName,
    };
  }

  factory GetViewResult.fromMap(Map<String, dynamic> map) {
    return GetViewResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      changed: (() { final guardedValue = map['changed']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      viewName: (() { final guardedValue = map['viewName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
