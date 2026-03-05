// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceShareResource {
  /// The ID of the shared resource.
  ///
  /// The value range of N: 1 to 5, that is, a maximum of 5 shared resources are added at a time.
  ///
  /// &gt; **NOTE:**  'Resources.N.ResourceId' and'resources. N.ResourceType' appear in pairs and need to be set at the same time.
  final pulumi.Input<String>? resourceId;
  /// Shared resource type.
  ///
  /// The value range of N: 1 to 5, that is, a maximum of 5 shared resources are added at a time.
  ///
  /// For the types of resources that support sharing, see [Cloud services that support sharing](https://www.alibabacloud.com/help/en/resource-management/resource-sharing/product-overview/services-that-work-with-resource-sharing).
  ///
  /// &gt; **NOTE:**  'Resources.N.ResourceId' and'resources. N.ResourceType' appear in pairs and need to be set at the same time.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [ResourceShareResource].
  /// [resourceId] The ID of the shared resource.
  /// [resourceType] Shared resource type.
  ResourceShareResource({
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory ResourceShareResource.fromMap(Map<String, dynamic> map) {
    return ResourceShareResource(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

