// ignore_for_file: unused_element, unnecessary_cast


/// User identity used for CMK.
class EncryptionPropertiesIdentity {
  /// The user identity used for CMK. It will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final dynamic userAssignedIdentity;

  /// Creates a new [EncryptionPropertiesIdentity].
  /// [userAssignedIdentity] The user identity used for CMK. It will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  EncryptionPropertiesIdentity({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory EncryptionPropertiesIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesIdentity(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'],
    );
  }
}

