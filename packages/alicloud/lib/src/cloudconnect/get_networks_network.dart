// ignore_for_file: unused_element, unnecessary_cast


class GetNetworksNetwork {
  /// CidrBlock of the CCN instance.
  final String cidrBlock;
  final String description;
  /// ID of the CCN instance.
  final String id;
  /// IsDefault of the CCN instance.
  final bool isDefault;
  /// Name of the CCN instance.
  final String name;

  /// Creates a new [GetNetworksNetwork].
  /// [cidrBlock] CidrBlock of the CCN instance.
  /// [description] Required.
  /// [id] ID of the CCN instance.
  /// [isDefault] IsDefault of the CCN instance.
  /// [name] Name of the CCN instance.
  GetNetworksNetwork({
    required this.cidrBlock,
    required this.description,
    required this.id,
    required this.isDefault,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'description': description,
      'id': id,
      'isDefault': isDefault,
      'name': name,
    };
  }

  factory GetNetworksNetwork.fromMap(Map<String, dynamic> map) {
    return GetNetworksNetwork(
      cidrBlock: map['cidrBlock'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      isDefault: map['isDefault'] as bool,
      name: map['name'] as String,
    );
  }
}

