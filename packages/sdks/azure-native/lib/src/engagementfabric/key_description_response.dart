// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The description of the EngagementFabric account key
class KeyDescriptionResponse {
  /// The name of the key
  final pulumi.Input<String> name;

  /// The rank of the key
  final pulumi.Input<String> rank;

  /// The value of the key
  final pulumi.Input<String> value;

  /// Creates a new [KeyDescriptionResponse].
  /// [name] The name of the key
  /// [rank] The rank of the key
  /// [value] The value of the key
  KeyDescriptionResponse({
    required this.name,
    required this.rank,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'rank': rank, 'value': value};
  }

  factory KeyDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return KeyDescriptionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      rank: pulumi.Input.fromValue(map['rank'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
