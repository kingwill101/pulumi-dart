// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to the APM
class ApmReferenceResponse {
  /// Resource Id of the APM
  final pulumi.Input<String> resourceId;

  /// Creates a new [ApmReferenceResponse].
  /// [resourceId] Resource Id of the APM
  const ApmReferenceResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory ApmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ApmReferenceResponse(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

