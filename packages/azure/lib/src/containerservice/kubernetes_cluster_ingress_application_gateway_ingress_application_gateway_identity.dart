// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity {
  /// The Client ID of the user-defined Managed Identity used for Web App Routing.
  final String? clientId;
  /// The Object ID of the user-defined Managed Identity used for Web App Routing
  final String? objectId;
  /// The ID of the User Assigned Identity used for Web App Routing.
  final String? userAssignedIdentityId;

  /// Creates a new [KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity used for Web App Routing.
  /// [objectId] The Object ID of the user-defined Managed Identity used for Web App Routing
  /// [userAssignedIdentityId] The ID of the User Assigned Identity used for Web App Routing.
  KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity({
    this.clientId,
    this.objectId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

