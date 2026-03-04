// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PermissionsDataLocation {
  /// Amazon Resource Name (ARN) that uniquely identifies the data location resource.
  ///
  /// The following argument is optional:
  final pulumi.Input<String> arn;

  /// Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;

  /// Creates a new [PermissionsDataLocation].
  /// [arn] Amazon Resource Name (ARN) that uniquely identifies the data location resource.
  /// [catalogId] Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  PermissionsDataLocation({required this.arn, this.catalogId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'catalogId': ?catalogId};
  }

  factory PermissionsDataLocation.fromMap(Map<String, dynamic> map) {
    return PermissionsDataLocation(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      catalogId: (() {
        final guardedValue = map['catalogId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
