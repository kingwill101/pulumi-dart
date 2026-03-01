// ignore_for_file: unused_element, unnecessary_cast

class GetUserExternalId {
  /// The identifier issued to this resource by an external identity provider.
  final String id;

  /// The issuer for an external identifier.
  final String issuer;

  /// Creates a new [GetUserExternalId].
  /// [id] The identifier issued to this resource by an external identity provider.
  /// [issuer] The issuer for an external identifier.
  GetUserExternalId({required this.id, required this.issuer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'issuer': issuer};
  }

  factory GetUserExternalId.fromMap(Map<String, dynamic> map) {
    return GetUserExternalId(
      id: map['id'] as String,
      issuer: map['issuer'] as String,
    );
  }
}
