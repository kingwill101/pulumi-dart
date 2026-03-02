// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentityResponseUserAssignedIdentities {
  /// The client id of user assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal id of user assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [IdentityResponseUserAssignedIdentities].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  IdentityResponseUserAssignedIdentities({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory IdentityResponseUserAssignedIdentities.fromMap(Map<String, dynamic> map) {
    return IdentityResponseUserAssignedIdentities(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
    );
  }
}

