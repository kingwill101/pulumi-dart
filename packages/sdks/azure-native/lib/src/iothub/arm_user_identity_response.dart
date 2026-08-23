// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ArmUserIdentityResponse {
  final pulumi.Input<String> clientId;
  final pulumi.Input<String> principalId;

  /// Creates a new [ArmUserIdentityResponse].
  /// [clientId] Required.
  /// [principalId] Required.
  const ArmUserIdentityResponse({
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
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
