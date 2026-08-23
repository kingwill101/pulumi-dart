// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For user assigned identity resource property.
class Identity {
  /// The resource ID of the user assigned identity.
  final pulumi.Input<String> id;

  /// Creates a new [Identity].
  /// [id] The resource ID of the user assigned identity.
  const Identity({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
