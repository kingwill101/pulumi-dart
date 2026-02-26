// ignore_for_file: unused_element, unnecessary_cast

class GetGroupsGroupExternalId {
  /// Identifier issued to this resource by an external identity provider.
  final String id;

  /// Issuer for an external identifier.
  final String issuer;

  GetGroupsGroupExternalId({
    required this.id,
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['issuer'] = issuer;
    return map;
  }

  factory GetGroupsGroupExternalId.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroupExternalId(
      id: map['id'] as String,
      issuer: map['issuer'] as String,
    );
  }
}
