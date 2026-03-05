// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypeOfferingFilter {
  /// Name of the filter. The `location` filter depends on the top-level `location_type` argument and if not specified, defaults to the current region.
  final pulumi.Input<String> name;
  /// List of one or more values for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetInstanceTypeOfferingFilter].
  /// [name] Name of the filter. The `location` filter depends on the top-level `location_type` argument and if not specified, defaults to the current region.
  /// [values] List of one or more values for the filter.
  GetInstanceTypeOfferingFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetInstanceTypeOfferingFilter.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

