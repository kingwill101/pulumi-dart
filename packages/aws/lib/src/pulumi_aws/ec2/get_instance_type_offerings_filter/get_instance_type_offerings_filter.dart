// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTypeOfferingsFilter {
  /// Name of the filter. The <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> filter depends on the top-level <span pulumi-lang-nodejs="`locationType`" pulumi-lang-dotnet="`LocationType`" pulumi-lang-go="`locationType`" pulumi-lang-python="`location_type`" pulumi-lang-yaml="`locationType`" pulumi-lang-java="`locationType`">`location_type`</span> argument and if not specified, defaults to the current region.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  GetInstanceTypeOfferingsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetInstanceTypeOfferingsFilter.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
