// ignore_for_file: unused_element, unnecessary_cast


/// The role based access control (RBAC) authorization type integration runtime.
class LinkedIntegrationRuntimeRbacAuthorization {
  /// The authorization type for integration runtime sharing.
  /// Expected value is 'RBAC'.
  final String authorizationType;
  /// The resource identifier of the integration runtime to be shared.
  final String resourceId;

  /// Creates a new [LinkedIntegrationRuntimeRbacAuthorization].
  /// [authorizationType] The authorization type for integration runtime sharing.
  /// [resourceId] The resource identifier of the integration runtime to be shared.
  LinkedIntegrationRuntimeRbacAuthorization({
    required this.authorizationType,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'resourceId': resourceId,
    };
  }

  factory LinkedIntegrationRuntimeRbacAuthorization.fromMap(Map<String, dynamic> map) {
    return LinkedIntegrationRuntimeRbacAuthorization(
      authorizationType: map['authorizationType'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

