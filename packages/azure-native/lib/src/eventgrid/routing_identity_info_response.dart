// ignore_for_file: unused_element, unnecessary_cast


/// Routing identity info for topic spaces configuration.
class RoutingIdentityInfoResponse {
  /// Routing identity type for topic spaces configuration.
  final String? type;
  final String? userAssignedIdentity;

  /// Creates a new [RoutingIdentityInfoResponse].
  /// [type] Routing identity type for topic spaces configuration.
  /// [userAssignedIdentity] Optional.
  RoutingIdentityInfoResponse({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory RoutingIdentityInfoResponse.fromMap(Map<String, dynamic> map) {
    return RoutingIdentityInfoResponse(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

