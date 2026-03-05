// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StudioApplicationInstance {
  /// The id of the instance.
  final pulumi.Input<String>? id;
  /// The name of the instance.
  final pulumi.Input<String>? nodeName;
  /// The type of the instance.
  final pulumi.Input<String>? nodeType;

  /// Creates a new [StudioApplicationInstance].
  /// [id] The id of the instance.
  /// [nodeName] The name of the instance.
  /// [nodeType] The type of the instance.
  StudioApplicationInstance({
    this.id,
    this.nodeName,
    this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'nodeName': ?nodeName,
      'nodeType': ?nodeType,
    };
  }

  factory StudioApplicationInstance.fromMap(Map<String, dynamic> map) {
    return StudioApplicationInstance(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

