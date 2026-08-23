// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAttachmentsFilter {
  /// Name of the filter check available value on [official documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html)
  final pulumi.Input<String> name;
  /// List of one or more values for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetAttachmentsFilter].
  /// [name] Name of the filter check available value on [official documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html)
  /// [values] List of one or more values for the filter.
  const GetAttachmentsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetAttachmentsFilter.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
