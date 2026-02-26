// ignore_for_file: unused_element, unnecessary_cast

class GetGroupExternalId {
  /// The identifier issued to this resource by an external identity provider.
  final String id;

  /// The issuer for an external identifier.
  final String issuer;

  GetGroupExternalId({
    required this.id,
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['issuer'] = issuer;
    return map;
  }

  factory GetGroupExternalId.fromMap(Map<String, dynamic> map) {
    return GetGroupExternalId(
      id: map['id'] as String,
      issuer: map['issuer'] as String,
    );
  }
}
