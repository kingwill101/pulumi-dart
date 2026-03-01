// ignore_for_file: unused_element, unnecessary_cast


class SwarmNode {
  final String? eip;
  final String? id;
  final String? name;
  final String? privateIp;
  final String? status;

  /// Creates a new [SwarmNode].
  /// [eip] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [privateIp] Optional.
  /// [status] Optional.
  SwarmNode({
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

  factory SwarmNode.fromMap(Map<String, dynamic> map) {
    return SwarmNode(
      eip: map['eip'] == null ? null : map['eip'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

