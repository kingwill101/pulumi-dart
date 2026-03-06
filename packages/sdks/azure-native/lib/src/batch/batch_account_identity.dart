// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// The identity of the Batch account, if configured. This is used when the user specifies 'Microsoft.KeyVault' as their Batch account encryption configuration or when `ManagedIdentity` is selected as the auto-storage authentication mode.
class BatchAccountIdentity {
  /// The type of identity used for the Batch account.
  final pulumi.Input<ResourceIdentityType> type;
  /// The list of user identities associated with the Batch account.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [BatchAccountIdentity].
  /// [type] The type of identity used for the Batch account.
  /// [userAssignedIdentities] The list of user identities associated with the Batch account.
  const BatchAccountIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<ResourceIdentityType, String>(type, (value) => value.wireValue),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory BatchAccountIdentity.fromMap(Map<String, dynamic> map) {
    return BatchAccountIdentity(
      type: pulumi.Input.fromValue(ResourceIdentityType.fromValue(map['type']! as String)),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

