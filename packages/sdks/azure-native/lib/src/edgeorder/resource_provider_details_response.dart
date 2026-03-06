// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Management RP details.
class ResourceProviderDetailsResponse {
  /// Resource provider namespace.
  final pulumi.Input<String> resourceProviderNamespace;

  /// Creates a new [ResourceProviderDetailsResponse].
  /// [resourceProviderNamespace] Resource provider namespace.
  const ResourceProviderDetailsResponse({
    required this.resourceProviderNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceProviderNamespace': resourceProviderNamespace,
    };
  }

  factory ResourceProviderDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderDetailsResponse(
      resourceProviderNamespace: pulumi.Input.fromValue(map['resourceProviderNamespace'] as String),
    );
  }
}

