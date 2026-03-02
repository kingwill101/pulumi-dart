// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User identity used for CMK.
class EncryptionPropertiesResponseIdentity {
  /// The user identity used for CMK. It will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<dynamic>? userAssignedIdentity;

  /// Creates a new [EncryptionPropertiesResponseIdentity].
  /// [userAssignedIdentity] The user identity used for CMK. It will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  EncryptionPropertiesResponseIdentity({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory EncryptionPropertiesResponseIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponseIdentity(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity']).input(),
    );
  }
}

