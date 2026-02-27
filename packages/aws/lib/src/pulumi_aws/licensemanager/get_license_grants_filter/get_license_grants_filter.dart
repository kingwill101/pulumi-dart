// ignore_for_file: unused_element, unnecessary_cast

class GetLicenseGrantsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/license-manager/latest/APIReference/API_ListReceivedGrants.html#API_ListReceivedGrants_RequestSyntax).
  /// For example, if filtering using `ProductSKU`, use:
  final String name;

  /// Set of values that are accepted for the given field.
  final List<String> values;

  GetLicenseGrantsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetLicenseGrantsFilter.fromMap(Map<String, dynamic> map) {
    return GetLicenseGrantsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
