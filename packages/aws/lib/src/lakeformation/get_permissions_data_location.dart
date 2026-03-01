// ignore_for_file: unused_element, unnecessary_cast

class GetPermissionsDataLocation {
  /// ARN that uniquely identifies the data location resource.
  ///
  /// The following argument is optional:
  final String arn;

  /// Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  final String catalogId;

  /// Creates a new [GetPermissionsDataLocation].
  /// [arn] ARN that uniquely identifies the data location resource.
  /// [catalogId] Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  GetPermissionsDataLocation({required this.arn, required this.catalogId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'catalogId': catalogId};
  }

  factory GetPermissionsDataLocation.fromMap(Map<String, dynamic> map) {
    return GetPermissionsDataLocation(
      arn: map['arn'] as String,
      catalogId: map['catalogId'] as String,
    );
  }
}
