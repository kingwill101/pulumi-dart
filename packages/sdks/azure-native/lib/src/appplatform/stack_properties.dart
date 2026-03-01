// ignore_for_file: unused_element, unnecessary_cast


/// KPack ClusterStack properties payload
class StackProperties {
  /// Id of the ClusterStack.
  final String? id;
  /// Version of the ClusterStack
  final String? version;

  /// Creates a new [StackProperties].
  /// [id] Id of the ClusterStack.
  /// [version] Version of the ClusterStack
  StackProperties({
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'version': ?version,
    };
  }

  factory StackProperties.fromMap(Map<String, dynamic> map) {
    return StackProperties(
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

