// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceFilter {
  /// Name of the filter.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference][1].
  final pulumi.Input<String> name;
  /// One or more values to match.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetInstanceFilter].
  /// [name] Name of the filter.
  /// [values] One or more values to match.
  const GetInstanceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetInstanceFilter.fromMap(Map<String, dynamic> map) {
    return GetInstanceFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

