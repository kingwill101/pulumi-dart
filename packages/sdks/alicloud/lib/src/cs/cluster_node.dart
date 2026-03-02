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
  ClusterNode({
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
      eip: map['eip'] == null ? null : (map['eip']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateIp: map['privateIp'] == null ? null : (map['privateIp']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

