// ignore_for_file: unused_element, unnecessary_cast

/// Options to configure rule type SinglePackageChange. The rule is used to alter the sql code for a package entities. The rule filter field can refer to one entity. The rule scope can be: Package
class SinglePackageChange {
  /// Optional. Sql code for package body
  final String? packageBody;

  /// Optional. Sql code for package description
  final String? packageDescription;

  SinglePackageChange({
    this.packageBody,
    this.packageDescription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final packageBodyValue = packageBody;
    if (packageBodyValue != null) {
      map['packageBody'] = packageBodyValue;
    }
    final packageDescriptionValue = packageDescription;
    if (packageDescriptionValue != null) {
      map['packageDescription'] = packageDescriptionValue;
    }
    return map;
  }

  factory SinglePackageChange.fromMap(Map<String, dynamic> map) {
    return SinglePackageChange(
      packageBody:
          map['packageBody'] == null ? null : map['packageBody'] as String,
      packageDescription: map['packageDescription'] == null
          ? null
          : map['packageDescription'] as String,
    );
  }
}
