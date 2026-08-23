// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPermissionsDataLocation {
  /// ARN that uniquely identifies the data location resource.
  ///
  /// The following argument is optional:
  final pulumi.Input<String> arn;
  /// Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  final pulumi.Input<String> catalogId;

  /// Creates a new [GetPermissionsDataLocation].
  /// [arn] ARN that uniquely identifies the data location resource.
  /// [catalogId] Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  const GetPermissionsDataLocation({
    required this.arn,
    required this.catalogId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'catalogId': catalogId,
    };
  }

  factory GetPermissionsDataLocation.fromMap(Map<String, dynamic> map) {
    return GetPermissionsDataLocation(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
    );
  }
}
