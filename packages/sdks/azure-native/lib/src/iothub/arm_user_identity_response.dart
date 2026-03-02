// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ArmUserIdentityResponse {
  final pulumi.Input<String> clientId;
  final pulumi.Input<String> principalId;

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
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
    );
  }
}

