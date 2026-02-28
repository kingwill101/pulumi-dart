// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypeOfferingsFilter {
  /// Name of the filter. The `location` filter depends on the top-level `location_type` argument and if not specified, defaults to the current region.
  final String name;
  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetInstanceTypeOfferingsFilter].
  /// [name] Name of the filter. The `location` filter depends on the top-level `location_type` argument and if not specified, defaults to the current region.
  /// [values] List of one or more values for the filter.
  GetInstanceTypeOfferingsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetInstanceTypeOfferingsFilter.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

