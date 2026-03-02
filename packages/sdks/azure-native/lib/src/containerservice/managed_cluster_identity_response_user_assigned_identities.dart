// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterIdentityResponseUserAssignedIdentities {
  /// The client id of user assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal id of user assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [ManagedClusterIdentityResponseUserAssignedIdentities].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  ManagedClusterIdentityResponseUserAssignedIdentities({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory ManagedClusterIdentityResponseUserAssignedIdentities.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIdentityResponseUserAssignedIdentities(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
    );
  }
}

