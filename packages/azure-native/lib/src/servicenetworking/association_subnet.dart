// ignore_for_file: unused_element, unnecessary_cast


/// Association Subnet.
class AssociationSubnet {
  /// Association ID.
  final String id;

  /// Creates a new [AssociationSubnet].
  /// [id] Association ID.
  AssociationSubnet({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AssociationSubnet.fromMap(Map<String, dynamic> map) {
    return AssociationSubnet(
      id: map['id'] as String,
    );
  }
}

