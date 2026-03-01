// ignore_for_file: unused_element, unnecessary_cast


/// Information about resource association
class ResourceAssociationResponse {
  /// Access Mode of the resource association
  final String? accessMode;
  /// Name of the resource association
  final String? name;

  /// Creates a new [ResourceAssociationResponse].
  /// [accessMode] Access Mode of the resource association
  /// [name] Name of the resource association
  ResourceAssociationResponse({
    this.accessMode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'name': ?name,
    };
  }

  factory ResourceAssociationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceAssociationResponse(
      accessMode: map['accessMode'] == null ? null : map['accessMode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

