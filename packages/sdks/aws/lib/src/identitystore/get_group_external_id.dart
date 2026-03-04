// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupExternalId {
  /// The identifier issued to this resource by an external identity provider.
  final pulumi.Input<String> id;

  /// The issuer for an external identifier.
  final pulumi.Input<String> issuer;

  /// Creates a new [GetGroupExternalId].
  /// [id] The identifier issued to this resource by an external identity provider.
  /// [issuer] The issuer for an external identifier.
  GetGroupExternalId({required this.id, required this.issuer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'issuer': issuer};
  }

  factory GetGroupExternalId.fromMap(Map<String, dynamic> map) {
    return GetGroupExternalId(
      id: pulumi.Input.fromValue(map['id'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
    );
  }
}
