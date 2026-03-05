// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed service identity.
class Identity {
  /// The type of managed service identity.
  final pulumi.Input<String> type;

  /// Creates a new [Identity].
  /// [type] The type of managed service identity.
  Identity({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

