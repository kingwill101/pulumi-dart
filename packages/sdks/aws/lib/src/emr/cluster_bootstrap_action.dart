// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBootstrapAction {
  /// List of command line arguments to pass to the bootstrap action script.
  final pulumi.Input<List<String>>? args;
  /// Name of the bootstrap action.
  final pulumi.Input<String> name;
  /// Location of the script to run during a bootstrap action. Can be either a location in Amazon S3 or on a local file system.
  final pulumi.Input<String> path;

  /// Creates a new [ClusterBootstrapAction].
  /// [args] List of command line arguments to pass to the bootstrap action script.
  /// [name] Name of the bootstrap action.
  /// [path] Location of the script to run during a bootstrap action. Can be either a location in Amazon S3 or on a local file system.
  ClusterBootstrapAction({
    this.args,
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'name': name,
      'path': path,
    };
  }

  factory ClusterBootstrapAction.fromMap(Map<String, dynamic> map) {
    return ClusterBootstrapAction(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

