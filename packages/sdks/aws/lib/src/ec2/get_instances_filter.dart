// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesFilter {
  /// Name of the filter.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html).
  final pulumi.Input<String> name;
  /// One or more values to match.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetInstancesFilter].
  /// [name] Name of the filter.
  /// [values] One or more values to match.
  const GetInstancesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetInstancesFilter.fromMap(Map<String, dynamic> map) {
    return GetInstancesFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
