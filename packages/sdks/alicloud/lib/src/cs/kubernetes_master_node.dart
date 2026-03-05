// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesMasterNode {
  /// ID of the node.
  final pulumi.Input<String>? id;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  final pulumi.Input<String>? name;
  /// The private IP address of node.
  final pulumi.Input<String>? privateIp;

  /// Creates a new [KubernetesMasterNode].
  /// [id] ID of the node.
  /// [name] The kubernetes cluster's name. It is unique in one Alicloud account.
  /// [privateIp] The private IP address of node.
  KubernetesMasterNode({
    this.id,
    this.name,
    this.privateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateIp': ?privateIp,
    };
  }

  factory KubernetesMasterNode.fromMap(Map<String, dynamic> map) {
    return KubernetesMasterNode(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

