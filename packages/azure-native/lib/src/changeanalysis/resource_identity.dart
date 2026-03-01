// ignore_for_file: unused_element, unnecessary_cast


/// The identity block returned by ARM resource that supports managed identity.
class ResourceIdentity {
  /// The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identities.
  final String? type;

  /// Creates a new [ResourceIdentity].
  /// [type] The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identities.
  ResourceIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

