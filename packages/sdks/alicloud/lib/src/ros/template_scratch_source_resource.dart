// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateScratchSourceResource {
  /// The ID of the Source Resource.
  final pulumi.Input<String> resourceId;
  /// The type of the Source resource.
  final pulumi.Input<String> resourceType;

  /// Creates a new [TemplateScratchSourceResource].
  /// [resourceId] The ID of the Source Resource.
  /// [resourceType] The type of the Source resource.
  const TemplateScratchSourceResource({
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory TemplateScratchSourceResource.fromMap(Map<String, dynamic> map) {
    return TemplateScratchSourceResource(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

