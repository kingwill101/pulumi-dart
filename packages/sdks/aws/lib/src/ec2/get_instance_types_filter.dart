// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesFilter {
  /// Name of the filter.
  final pulumi.Input<String> name;
  /// List of one or more values for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetInstanceTypesFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  GetInstanceTypesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetInstanceTypesFilter.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesFilter(
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

