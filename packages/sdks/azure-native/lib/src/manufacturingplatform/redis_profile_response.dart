// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to Azure Redis Cache Resource
class RedisProfileResponse {
  /// Resource Id of Azure Redis Cache Resource
  final pulumi.Input<String> id;

  /// Creates a new [RedisProfileResponse].
  /// [id] Resource Id of Azure Redis Cache Resource
  const RedisProfileResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory RedisProfileResponse.fromMap(Map<String, dynamic> map) {
    return RedisProfileResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

