// ignore_for_file: unused_element, unnecessary_cast


/// Key encryption key properties
class KekIdentityProperties {
  /// Boolean specifying whether to use system assigned identity or not
  final dynamic useSystemAssignedIdentity;
  /// User assigned identity resource Id
  final String? userAssignedIdentity;

  /// Creates a new [KekIdentityProperties].
  /// [useSystemAssignedIdentity] Boolean specifying whether to use system assigned identity or not
  /// [userAssignedIdentity] User assigned identity resource Id
  KekIdentityProperties({
    this.useSystemAssignedIdentity,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useSystemAssignedIdentity': ?useSystemAssignedIdentity,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory KekIdentityProperties.fromMap(Map<String, dynamic> map) {
    return KekIdentityProperties(
      useSystemAssignedIdentity: map['useSystemAssignedIdentity'] == null ? null : map['useSystemAssignedIdentity'],
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

