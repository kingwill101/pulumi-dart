// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAdditionalVolumeRole {
  /// The type of the nodes to which the additional file system is attached.
  final pulumi.Input<String>? name;

  /// Creates a new [ClusterAdditionalVolumeRole].
  /// [name] The type of the nodes to which the additional file system is attached.
  ClusterAdditionalVolumeRole({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ClusterAdditionalVolumeRole.fromMap(Map<String, dynamic> map) {
    return ClusterAdditionalVolumeRole(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

