// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppScmAllowed.
class GetWebAppScmAllowedResult {
  /// <code>true</code> to allow access to a publishing method; otherwise, <code>false</code>.
  final bool allow;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppScmAllowedResult].
  /// [allow] <code>true</code> to allow access to a publishing method; otherwise, <code>false</code>.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  GetWebAppScmAllowedResult({
    required this.allow,
    required this.azureApiVersion,
    required this.id,
    this.kind,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
    };
  }

  factory GetWebAppScmAllowedResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppScmAllowedResult(
      allow: map['allow'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

