// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudBuilderStack {
  /// Specifies the ID of the ClusterStack.
  final String id;
  /// Specifies the version of the ClusterStack
  final String version;

  /// Creates a new [SpringCloudBuilderStack].
  /// [id] Specifies the ID of the ClusterStack.
  /// [version] Specifies the version of the ClusterStack
  SpringCloudBuilderStack({
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'version': version,
    };
  }

  factory SpringCloudBuilderStack.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuilderStack(
      id: map['id'] as String,
      version: map['version'] as String,
    );
  }
}

