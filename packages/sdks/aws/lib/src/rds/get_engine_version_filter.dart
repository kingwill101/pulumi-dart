// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEngineVersionFilter {
  /// Name of the filter field. Valid values can be found in the [describe-db-engine-versions AWS CLI reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/describe-db-engine-versions.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetEngineVersionFilter].
  /// [name] Name of the filter field. Valid values can be found in the [describe-db-engine-versions AWS CLI reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/describe-db-engine-versions.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  const GetEngineVersionFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetEngineVersionFilter.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
