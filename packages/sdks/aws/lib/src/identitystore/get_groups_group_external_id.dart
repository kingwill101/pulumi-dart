// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupsGroupExternalId {
  /// Identifier issued to this resource by an external identity provider.
  final pulumi.Input<String> id;
  /// Issuer for an external identifier.
  final pulumi.Input<String> issuer;

  /// Creates a new [GetGroupsGroupExternalId].
  /// [id] Identifier issued to this resource by an external identity provider.
  /// [issuer] Issuer for an external identifier.
  GetGroupsGroupExternalId({
    required this.id,
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'issuer': issuer,
    };
  }

  factory GetGroupsGroupExternalId.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroupExternalId(
      id: (map['id'] as String).input(),
      issuer: (map['issuer'] as String).input(),
    );
  }
}

