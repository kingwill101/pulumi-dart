// ignore_for_file: unused_element, unnecessary_cast

class ClusterBootstrapAction {
  /// List of command line arguments to pass to the bootstrap action script.
  final List<String>? args;

  /// Name of the bootstrap action.
  final String name;

  /// Location of the script to run during a bootstrap action. Can be either a location in Amazon S3 or on a local file system.
  final String path;

  /// Creates a new [ClusterBootstrapAction].
  /// [args] List of command line arguments to pass to the bootstrap action script.
  /// [name] Name of the bootstrap action.
  /// [path] Location of the script to run during a bootstrap action. Can be either a location in Amazon S3 or on a local file system.
  ClusterBootstrapAction({this.args, required this.name, required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'args': ?args, 'name': name, 'path': path};
  }

  factory ClusterBootstrapAction.fromMap(Map<String, dynamic> map) {
    return ClusterBootstrapAction(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      name: map['name'] as String,
      path: map['path'] as String,
    );
  }
}
