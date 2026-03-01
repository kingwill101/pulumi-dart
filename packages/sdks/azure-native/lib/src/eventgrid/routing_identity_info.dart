// ignore_for_file: unused_element, unnecessary_cast


/// Routing identity info for topic spaces configuration.
class RoutingIdentityInfo {
  /// Routing identity type for topic spaces configuration.
  final String? type;
  final String? userAssignedIdentity;

  /// Creates a new [RoutingIdentityInfo].
  /// [type] Routing identity type for topic spaces configuration.
  /// [userAssignedIdentity] Optional.
  RoutingIdentityInfo({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory RoutingIdentityInfo.fromMap(Map<String, dynamic> map) {
    return RoutingIdentityInfo(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

