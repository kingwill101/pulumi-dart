// ignore_for_file: unused_element, unnecessary_cast

class GetManagedPrefixListsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeManagedPrefixLists.html).
  final String name;

  /// Set of values that are accepted for the given field.
  /// A managed prefix list will be selected if any one of the given values matches.
  final List<String> values;

  GetManagedPrefixListsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetManagedPrefixListsFilter.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
