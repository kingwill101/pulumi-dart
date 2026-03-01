// ignore_for_file: unused_element, unnecessary_cast


/// The ARM ID for a Network Security Group.
class NatGatewayArmReference {
  /// The ARM ID for a Network Security Group.
  final String? resourceId;

  /// Creates a new [NatGatewayArmReference].
  /// [resourceId] The ARM ID for a Network Security Group.
  NatGatewayArmReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory NatGatewayArmReference.fromMap(Map<String, dynamic> map) {
    return NatGatewayArmReference(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

