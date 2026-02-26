// ignore_for_file: unused_element, unnecessary_cast

class OptInResourceDataDataLocation {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// ARN that uniquely identifies the data location resource.
  final String resourceArn;

  OptInResourceDataDataLocation({
    this.catalogId,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory OptInResourceDataDataLocation.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataDataLocation(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
