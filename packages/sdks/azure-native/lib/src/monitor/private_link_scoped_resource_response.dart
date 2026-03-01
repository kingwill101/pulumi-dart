// ignore_for_file: unused_element, unnecessary_cast


class PrivateLinkScopedResourceResponse {
  /// The resourceId of the Azure Monitor Private Link Scope Scoped Resource through which this DCE is associated with a Azure Monitor Private Link Scope.
  final String? resourceId;
  /// The immutableId of the Azure Monitor Private Link Scope Resource to which the association is.
  final String? scopeId;

  /// Creates a new [PrivateLinkScopedResourceResponse].
  /// [resourceId] The resourceId of the Azure Monitor Private Link Scope Scoped Resource through which this DCE is associated with a Azure Monitor Private Link Scope.
  /// [scopeId] The immutableId of the Azure Monitor Private Link Scope Resource to which the association is.
  PrivateLinkScopedResourceResponse({
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
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      scopeId: map['scopeId'] == null ? null : map['scopeId'] as String,
    );
  }
}

