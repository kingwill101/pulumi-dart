// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubResourceReadOnlyResponse {
  /// Resource Id
  final pulumi.Input<String> id;

  /// Creates a new [SubResourceReadOnlyResponse].
  /// [id] Resource Id
  SubResourceReadOnlyResponse({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory SubResourceReadOnlyResponse.fromMap(Map<String, dynamic> map) {
    return SubResourceReadOnlyResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
