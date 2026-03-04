// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworksNetwork {
  /// CidrBlock of the CCN instance.
  final pulumi.Input<String> cidrBlock;
  final pulumi.Input<String> description;

  /// ID of the CCN instance.
  final pulumi.Input<String> id;

  /// IsDefault of the CCN instance.
  final pulumi.Input<bool> isDefault;

  /// Name of the CCN instance.
  final pulumi.Input<String> name;

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
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
