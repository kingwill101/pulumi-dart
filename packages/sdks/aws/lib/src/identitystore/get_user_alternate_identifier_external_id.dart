// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserAlternateIdentifierExternalId {
  /// The identifier issued to this resource by an external identity provider.
  final pulumi.Input<String> id;
  /// The issuer for an external identifier.
  final pulumi.Input<String> issuer;

  /// Creates a new [GetUserAlternateIdentifierExternalId].
  /// [id] The identifier issued to this resource by an external identity provider.
  /// [issuer] The issuer for an external identifier.
  GetUserAlternateIdentifierExternalId({
    required this.id,
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'issuer': issuer,
    };
  }

  factory GetUserAlternateIdentifierExternalId.fromMap(Map<String, dynamic> map) {
    return GetUserAlternateIdentifierExternalId(
      id: (map['id'] as String).input(),
      issuer: (map['issuer'] as String).input(),
    );
  }
}

