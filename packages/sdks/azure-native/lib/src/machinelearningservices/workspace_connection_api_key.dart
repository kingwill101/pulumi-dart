// ignore_for_file: unused_element, unnecessary_cast


/// Api key object for workspace connection credential.
class WorkspaceConnectionApiKey {
  final String? key;

  /// Creates a new [WorkspaceConnectionApiKey].
  /// [key] Optional.
  WorkspaceConnectionApiKey({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory WorkspaceConnectionApiKey.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionApiKey(
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}

