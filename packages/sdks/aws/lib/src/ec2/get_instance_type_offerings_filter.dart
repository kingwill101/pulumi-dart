// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypeOfferingsFilter {
  /// Name of the filter. The `location` filter depends on the top-level `locationType` argument and if not specified, defaults to the current region.
  final pulumi.Input<String> name;
  /// List of one or more values for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetInstanceTypeOfferingsFilter].
  /// [name] Name of the filter. The `location` filter depends on the top-level `locationType` argument and if not specified, defaults to the current region.
  /// [values] List of one or more values for the filter.
  const GetInstanceTypeOfferingsFilter({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
