// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to the managed component like Config Server.
class ManagedComponentReferenceResponse {
  /// Resource Id of the managed component
  final pulumi.Input<String> resourceId;

  /// Creates a new [ManagedComponentReferenceResponse].
  /// [resourceId] Resource Id of the managed component
  const ManagedComponentReferenceResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory ManagedComponentReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ManagedComponentReferenceResponse(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
