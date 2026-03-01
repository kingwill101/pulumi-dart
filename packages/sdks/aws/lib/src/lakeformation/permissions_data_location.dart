// ignore_for_file: unused_element, unnecessary_cast


class PermissionsDataLocation {
  /// Amazon Resource Name (ARN) that uniquely identifies the data location resource.
  ///
  /// The following argument is optional:
  final String arn;
  /// Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Creates a new [PermissionsDataLocation].
  /// [arn] Amazon Resource Name (ARN) that uniquely identifies the data location resource.
  /// [catalogId] Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  PermissionsDataLocation({
    required this.arn,
    this.catalogId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'catalogId': ?catalogId,
    };
  }

  factory PermissionsDataLocation.fromMap(Map<String, dynamic> map) {
    return PermissionsDataLocation(
      arn: map['arn'] as String,
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
    );
  }
}

