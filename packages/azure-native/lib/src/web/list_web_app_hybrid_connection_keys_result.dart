// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppHybridConnectionKeys.
class ListWebAppHybridConnectionKeysResult {
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// The name of the send key.
  final String sendKeyName;
  /// The value of the send key.
  final String sendKeyValue;
  /// Resource type.
  final String type;

  /// Creates a new [ListWebAppHybridConnectionKeysResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [sendKeyName] The name of the send key.
  /// [sendKeyValue] The value of the send key.
  /// [type] Resource type.
  ListWebAppHybridConnectionKeysResult({
    required this.id,
    this.kind,
    required this.name,
    required this.sendKeyName,
    required this.sendKeyValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'sendKeyName': sendKeyName,
      'sendKeyValue': sendKeyValue,
      'type': type,
    };
  }

  factory ListWebAppHybridConnectionKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppHybridConnectionKeysResult(
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      sendKeyName: map['sendKeyName'] as String,
      sendKeyValue: map['sendKeyValue'] as String,
      type: map['type'] as String,
    );
  }
}

