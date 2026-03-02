// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitGatewayFilter {
  /// Name of the field to filter by, as defined by the [underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html).
  final pulumi.Input<String> name;
  /// List of one or more values for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetTransitGatewayFilter].
  /// [name] Name of the field to filter by, as defined by the [underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html).
  /// [values] List of one or more values for the filter.
  GetTransitGatewayFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetTransitGatewayFilter.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayFilter(
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

