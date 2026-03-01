// ignore_for_file: unused_element, unnecessary_cast

class GetRouteTableRoutesFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayRoutes.html).
  final String name;

  /// Set of values that are accepted for the given field.
  final List<String> values;

  /// Creates a new [GetRouteTableRoutesFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetRouteTableRoutesFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetRouteTableRoutesFilter.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoutesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
