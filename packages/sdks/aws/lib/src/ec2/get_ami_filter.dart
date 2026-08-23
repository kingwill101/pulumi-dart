// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAmiFilter {
  /// Name of the filter. For a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetAmiFilter].
  /// [name] Name of the filter. For a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html).
  /// [values] Set of values that are accepted for the given filter.
  const GetAmiFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetAmiFilter.fromMap(Map<String, dynamic> map) {
    return GetAmiFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
