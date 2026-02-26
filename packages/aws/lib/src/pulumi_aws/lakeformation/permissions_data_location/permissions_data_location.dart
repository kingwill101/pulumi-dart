// ignore_for_file: unused_element, unnecessary_cast

class PermissionsDataLocation {
  /// Amazon Resource Name (ARN) that uniquely identifies the data location resource.
  ///
  /// The following argument is optional:
  final String arn;

  /// Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  final String? catalogId;

  PermissionsDataLocation({
    required this.arn,
    this.catalogId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    return map;
  }

  factory PermissionsDataLocation.fromMap(Map<String, dynamic> map) {
    return PermissionsDataLocation(
      arn: map['arn'] as String,
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
    );
  }
}
