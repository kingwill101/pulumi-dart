// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to another ARM resource.
class SubResourceResponse {
  /// Resource ID.
  final pulumi.Input<String> id;

  /// Creates a new [SubResourceResponse].
  /// [id] Resource ID.
  SubResourceResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory SubResourceResponse.fromMap(Map<String, dynamic> map) {
    return SubResourceResponse(
      id: (map['id'] as String).input(),
    );
  }
}

