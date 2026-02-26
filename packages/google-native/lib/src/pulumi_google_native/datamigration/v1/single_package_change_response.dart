// ignore_for_file: unused_element, unnecessary_cast

/// Options to configure rule type SinglePackageChange. The rule is used to alter the sql code for a package entities. The rule filter field can refer to one entity. The rule scope can be: Package
class SinglePackageChangeResponse {
  /// Optional. Sql code for package body
  final String packageBody;

  /// Optional. Sql code for package description
  final String packageDescription;

  SinglePackageChangeResponse({
    required this.packageBody,
    required this.packageDescription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['packageBody'] = packageBody;
    map['packageDescription'] = packageDescription;
    return map;
  }

  factory SinglePackageChangeResponse.fromMap(Map<String, dynamic> map) {
    return SinglePackageChangeResponse(
      packageBody: map['packageBody'] as String,
      packageDescription: map['packageDescription'] as String,
    );
  }
}
