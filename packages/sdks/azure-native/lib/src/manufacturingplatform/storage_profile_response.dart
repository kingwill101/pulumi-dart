// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to Storage Resource
class StorageProfileResponse {
  /// Resource Id of Storage Resource
  final pulumi.Input<String> id;

  /// Creates a new [StorageProfileResponse].
  /// [id] Resource Id of Storage Resource
  StorageProfileResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

