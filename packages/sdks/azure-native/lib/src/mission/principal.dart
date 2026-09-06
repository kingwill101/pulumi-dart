// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Principal for maintenance mode or role assignments
class Principal {
  /// The object id associated with the principal
  final pulumi.Input<String> id;
  /// The type of the object id. We currently allow users, groups, and service principals
  final pulumi.Input<dynamic> type;

  /// Creates a new [Principal].
  /// [id] The object id associated with the principal
  /// [type] The type of the object id. We currently allow users, groups, and service principals
  const Principal({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory Principal.fromMap(Map<String, dynamic> map) {
    return Principal(
      id: pulumi.Input.fromValue(map['id'] as String),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
