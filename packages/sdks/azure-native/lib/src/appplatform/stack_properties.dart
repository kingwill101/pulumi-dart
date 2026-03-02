// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KPack ClusterStack properties payload
class StackProperties {
  /// Id of the ClusterStack.
  final pulumi.Input<String>? id;
  /// Version of the ClusterStack
  final pulumi.Input<String>? version;

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
      id: map['id'] == null ? null : (map['id']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

