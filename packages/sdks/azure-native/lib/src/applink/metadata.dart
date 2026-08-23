// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember metadata
class Metadata {
  /// Resource ID
  final pulumi.Input<String> resourceId;

  /// Creates a new [Metadata].
  /// [resourceId] Resource ID
  const Metadata({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory Metadata.fromMap(Map<String, dynamic> map) {
    return Metadata(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
