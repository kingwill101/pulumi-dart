// ignore_for_file: unused_element, unnecessary_cast


/// Identity properties of the factory resource.
class FactoryIdentity {
  /// The identity type.
  final String type;
  /// List of user assigned identities for the factory.
  final Map<String, dynamic>? userAssignedIdentities;

  /// Creates a new [FactoryIdentity].
  /// [type] The identity type.
  /// [userAssignedIdentities] List of user assigned identities for the factory.
  FactoryIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory FactoryIdentity.fromMap(Map<String, dynamic> map) {
    return FactoryIdentity(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as Map).cast<String, dynamic>(),
    );
  }
}

