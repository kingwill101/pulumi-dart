// ignore_for_file: unused_element, unnecessary_cast


class ClusterNode {
  final String? eip;
  final String? id;
  final String? name;
  final String? privateIp;
  final String? status;

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
      eip: map['eip'] == null ? null : map['eip'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

