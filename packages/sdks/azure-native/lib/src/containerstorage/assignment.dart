// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Assignment Properties
class Assignment {
  /// Resource id for the assigned resource
  final pulumi.Input<String> id;

  /// Creates a new [Assignment].
  /// [id] Resource id for the assigned resource
  const Assignment({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Assignment.fromMap(Map<String, dynamic> map) {
    return Assignment(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
