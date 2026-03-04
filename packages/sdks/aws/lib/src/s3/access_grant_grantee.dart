// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGrantGrantee {
  /// Grantee identifier.
  final pulumi.Input<String> granteeIdentifier;

  /// Grantee types. Valid values: `DIRECTORY_USER`, `DIRECTORY_GROUP`, `IAM`.
  final pulumi.Input<String> granteeType;

  /// Creates a new [AccessGrantGrantee].
  /// [granteeIdentifier] Grantee identifier.
  /// [granteeType] Grantee types. Valid values: `DIRECTORY_USER`, `DIRECTORY_GROUP`, `IAM`.
  AccessGrantGrantee({
    required this.granteeIdentifier,
    required this.granteeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'granteeIdentifier': granteeIdentifier,
      'granteeType': granteeType,
    };
  }

  factory AccessGrantGrantee.fromMap(Map<String, dynamic> map) {
    return AccessGrantGrantee(
      granteeIdentifier: pulumi.Input.fromValue(
        map['granteeIdentifier'] as String,
      ),
      granteeType: pulumi.Input.fromValue(map['granteeType'] as String),
    );
  }
}
