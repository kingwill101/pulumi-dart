// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterBootstrapActionList {
  /// Parameters of the boot operation.
  final pulumi.Input<String> arg;
  /// The name of the boot operation.
  final pulumi.Input<String> name;
  /// Boot operation script path.
  final pulumi.Input<String> path;

  /// Creates a new [GetClustersClusterBootstrapActionList].
  /// [arg] Parameters of the boot operation.
  /// [name] The name of the boot operation.
  /// [path] Boot operation script path.
  const GetClustersClusterBootstrapActionList({
    required this.arg,
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arg': arg,
      'name': name,
      'path': path,
    };
  }

  factory GetClustersClusterBootstrapActionList.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterBootstrapActionList(
      arg: pulumi.Input.fromValue(map['arg'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

