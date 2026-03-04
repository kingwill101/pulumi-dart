// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the Azure Active Directory allowed principals.
class AllowedPrincipalsResponse {
  /// The list of the allowed groups.
  final pulumi.Input<List<String>>? groups;

  /// The list of the allowed identities.
  final pulumi.Input<List<String>>? identities;

  /// Creates a new [AllowedPrincipalsResponse].
  /// [groups] The list of the allowed groups.
  /// [identities] The list of the allowed identities.
  AllowedPrincipalsResponse({this.groups, this.identities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groups': ?groups, 'identities': ?identities};
  }

  factory AllowedPrincipalsResponse.fromMap(Map<String, dynamic> map) {
    return AllowedPrincipalsResponse(
      groups: (() {
        final guardedValue = map['groups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      identities: (() {
        final guardedValue = map['identities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
