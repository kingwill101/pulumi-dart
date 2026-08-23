// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrameworkControlSetControl {
  /// Unique identifier for the framework.
  final pulumi.Input<String> id;

  /// Creates a new [GetFrameworkControlSetControl].
  /// [id] Unique identifier for the framework.
  const GetFrameworkControlSetControl({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetFrameworkControlSetControl.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlSetControl(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
