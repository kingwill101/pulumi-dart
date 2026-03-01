// ignore_for_file: unused_element, unnecessary_cast


/// Managed service identity (user assigned identities)
class SAPVirtualInstanceIdentity {
  /// The type of managed identity assigned to this resource.
  final String type;
  /// The identities assigned to this resource by the user.
  final List<String>? userAssignedIdentities;

  /// Creates a new [SAPVirtualInstanceIdentity].
  /// [type] The type of managed identity assigned to this resource.
  /// [userAssignedIdentities] The identities assigned to this resource by the user.
  SAPVirtualInstanceIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory SAPVirtualInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return SAPVirtualInstanceIdentity(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

