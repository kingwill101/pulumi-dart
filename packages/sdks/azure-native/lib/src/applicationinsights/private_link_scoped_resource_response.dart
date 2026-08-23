// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private link scope resource reference.
class PrivateLinkScopedResourceResponse {
  /// The full resource Id of the private link scope resource.
  final pulumi.Input<String>? resourceId;
  /// The private link scope unique Identifier.
  final pulumi.Input<String>? scopeId;

  /// Creates a new [PrivateLinkScopedResourceResponse].
  /// [resourceId] The full resource Id of the private link scope resource.
  /// [scopeId] The private link scope unique Identifier.
  const PrivateLinkScopedResourceResponse({
    this.resourceId,
    this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'scopeId': ?scopeId,
    };
  }

  factory PrivateLinkScopedResourceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkScopedResourceResponse(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeId: (() { final guardedValue = map['scopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
