// ignore_for_file: unused_element, unnecessary_cast

class QueueHttpTargetUriOverridePathOverride {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final String? path;

  /// Creates a new [QueueHttpTargetUriOverridePathOverride].
  /// [path] The URI path (e.g., /users/1234). Default is an empty string.
  QueueHttpTargetUriOverridePathOverride({
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory QueueHttpTargetUriOverridePathOverride.fromMap(
      Map<String, dynamic> map) {
    return QueueHttpTargetUriOverridePathOverride(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
