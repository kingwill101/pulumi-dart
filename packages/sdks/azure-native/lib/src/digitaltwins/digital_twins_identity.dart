// ignore_for_file: unused_element, unnecessary_cast


/// The managed identity for the DigitalTwinsInstance.
class DigitalTwinsIdentity {
  /// The type of Managed Identity used by the DigitalTwinsInstance.
  final String? type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  /// .
  final List<String>? userAssignedIdentities;

  /// Creates a new [DigitalTwinsIdentity].
  /// [type] The type of Managed Identity used by the DigitalTwinsInstance.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  DigitalTwinsIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory DigitalTwinsIdentity.fromMap(Map<String, dynamic> map) {
    return DigitalTwinsIdentity(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

