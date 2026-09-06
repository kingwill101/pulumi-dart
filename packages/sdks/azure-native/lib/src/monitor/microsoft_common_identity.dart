// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_type.dart';

/// Identity for the resource.
class MicrosoftCommonIdentity {
  /// Type of managed service identity.
  final pulumi.Input<IdentityType> type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<List<String>?>? userAssignedIdentities;

  /// Creates a new [MicrosoftCommonIdentity].
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  const MicrosoftCommonIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<IdentityType, String>(type, (value) => value.wireValue),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory MicrosoftCommonIdentity.fromMap(Map<String, dynamic> map) {
    return MicrosoftCommonIdentity(
      type: pulumi.Input.fromValue(IdentityType.fromValue(map['type']! as String)),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
