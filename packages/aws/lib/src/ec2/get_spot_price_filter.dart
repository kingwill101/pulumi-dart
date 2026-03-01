// ignore_for_file: unused_element, unnecessary_cast


class GetSpotPriceFilter {
  /// Name of the filter.
  final String name;
  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetSpotPriceFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  GetSpotPriceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetSpotPriceFilter.fromMap(Map<String, dynamic> map) {
    return GetSpotPriceFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

