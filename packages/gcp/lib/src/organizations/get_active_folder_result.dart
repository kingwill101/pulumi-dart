// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getActiveFolder.
class GetActiveFolderResult {
  final String? apiMethod;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The resource name of the Folder. This uniquely identifies the folder.
  final String name;
  final String parent;

  /// Creates a new [GetActiveFolderResult].
  /// [apiMethod] Optional.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the Folder. This uniquely identifies the folder.
  /// [parent] Required.
  GetActiveFolderResult({
    this.apiMethod,
    required this.displayName,
    required this.id,
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiMethod': ?apiMethod,
      'displayName': displayName,
      'id': id,
      'name': name,
      'parent': parent,
    };
  }

  factory GetActiveFolderResult.fromMap(Map<String, dynamic> map) {
    return GetActiveFolderResult(
      apiMethod: map['apiMethod'] == null ? null : map['apiMethod'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
    );
  }
}
