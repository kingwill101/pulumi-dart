// ignore_for_file: unused_element, unnecessary_cast

class AccessGrantGrantee {
  /// Grantee identifier.
  final String granteeIdentifier;

  /// Grantee types. Valid values: `DIRECTORY_USER`, `DIRECTORY_GROUP`, `IAM`.
  final String granteeType;

  AccessGrantGrantee({
    required this.granteeIdentifier,
    required this.granteeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['granteeIdentifier'] = granteeIdentifier;
    map['granteeType'] = granteeType;
    return map;
  }

  factory AccessGrantGrantee.fromMap(Map<String, dynamic> map) {
    return AccessGrantGrantee(
      granteeIdentifier: map['granteeIdentifier'] as String,
      granteeType: map['granteeType'] as String,
    );
  }
}
