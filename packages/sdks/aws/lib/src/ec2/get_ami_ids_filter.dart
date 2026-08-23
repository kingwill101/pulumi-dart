// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAmiIdsFilter {
  /// Name of the filter. For a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetAmiIdsFilter].
  /// [name] Name of the filter. For a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html).
  /// [values] Set of values that are accepted for the given filter.
  const GetAmiIdsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetAmiIdsFilter.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
