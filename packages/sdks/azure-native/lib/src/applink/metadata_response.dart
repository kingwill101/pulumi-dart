// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember metadata
class MetadataResponse {
  /// Resource ID
  final pulumi.Input<String> resourceId;

  /// Creates a new [MetadataResponse].
  /// [resourceId] Resource ID
  const MetadataResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory MetadataResponse.fromMap(Map<String, dynamic> map) {
    return MetadataResponse(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
