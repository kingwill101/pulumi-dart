// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionsFilter {
  /// Name of the filter field. Valid values can be found in the [describe-regions AWS CLI Reference][1].
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetRegionsFilter].
  /// [name] Name of the filter field. Valid values can be found in the [describe-regions AWS CLI Reference][1].
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetRegionsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetRegionsFilter.fromMap(Map<String, dynamic> map) {
    return GetRegionsFilter(
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

