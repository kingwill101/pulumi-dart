// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcAttachmentsFilter {
  /// Name of the filter check available value on [official documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayVpcAttachments.html)
  final pulumi.Input<String> name;

  /// List of one or more values for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetVpcAttachmentsFilter].
  /// [name] Name of the filter check available value on [official documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayVpcAttachments.html)
  /// [values] List of one or more values for the filter.
  GetVpcAttachmentsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetVpcAttachmentsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
