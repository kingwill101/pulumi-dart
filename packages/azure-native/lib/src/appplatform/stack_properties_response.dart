// ignore_for_file: unused_element, unnecessary_cast


/// KPack ClusterStack properties payload
class StackPropertiesResponse {
  /// Id of the ClusterStack.
  final String? id;
  /// Version of the ClusterStack
  final String? version;

  /// Creates a new [StackPropertiesResponse].
  /// [id] Id of the ClusterStack.
  /// [version] Version of the ClusterStack
  StackPropertiesResponse({
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'version': ?version,
    };
  }

  factory StackPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StackPropertiesResponse(
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

