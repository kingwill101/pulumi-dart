// ignore_for_file: unused_element, unnecessary_cast

class GetGroupExternalId {
  /// The identifier issued to this resource by an external identity provider.
  final String id;

  /// The issuer for an external identifier.
  final String issuer;

  /// Creates a new [GetGroupExternalId].
  /// [id] The identifier issued to this resource by an external identity provider.
  /// [issuer] The issuer for an external identifier.
  GetGroupExternalId({required this.id, required this.issuer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'issuer': issuer};
  }

  factory GetGroupExternalId.fromMap(Map<String, dynamic> map) {
    return GetGroupExternalId(
      id: map['id'] as String,
      issuer: map['issuer'] as String,
    );
  }
}
