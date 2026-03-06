// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNode {
  final pulumi.Input<String>? eip;
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? privateIp;
  final pulumi.Input<String>? status;

  /// Creates a new [ClusterNode].
  /// [eip] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [privateIp] Optional.
  /// [status] Optional.
  const ClusterNode({
    this.eip,
    this.id,
    this.name,
    this.privateIp,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eip': ?eip,
      'id': ?id,
      'name': ?name,
      'privateIp': ?privateIp,
      'status': ?status,
    };
  }

  factory ClusterNode.fromMap(Map<String, dynamic> map) {
    return ClusterNode(
      eip: (() { final guardedValue = map['eip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

