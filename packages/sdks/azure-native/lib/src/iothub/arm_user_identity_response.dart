// ignore_for_file: unused_element, unnecessary_cast


class ArmUserIdentityResponse {
  final String clientId;
  final String principalId;

  /// Creates a new [ArmUserIdentityResponse].
  /// [clientId] Required.
  /// [principalId] Required.
  ArmUserIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory ArmUserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ArmUserIdentityResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

