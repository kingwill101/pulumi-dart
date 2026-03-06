// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KPack ClusterStack properties payload
class StackPropertiesResponse {
  /// Id of the ClusterStack.
  final pulumi.Input<String>? id;
  /// Version of the ClusterStack
  final pulumi.Input<String>? version;

  /// Creates a new [StackPropertiesResponse].
  /// [id] Id of the ClusterStack.
  /// [version] Version of the ClusterStack
  const StackPropertiesResponse({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

