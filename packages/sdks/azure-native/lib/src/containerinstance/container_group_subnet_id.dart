// ignore_for_file: unused_element, unnecessary_cast


/// Container group subnet information.
class ContainerGroupSubnetId {
  /// Resource ID of virtual network and subnet.
  final String id;
  /// Friendly name for the subnet.
  final String? name;

  /// Creates a new [ContainerGroupSubnetId].
  /// [id] Resource ID of virtual network and subnet.
  /// [name] Friendly name for the subnet.
  ContainerGroupSubnetId({
    required this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
    };
  }

  factory ContainerGroupSubnetId.fromMap(Map<String, dynamic> map) {
    return ContainerGroupSubnetId(
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

