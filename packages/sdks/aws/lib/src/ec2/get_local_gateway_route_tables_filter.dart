// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLocalGatewayRouteTablesFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayRouteTables.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given field.
  /// A Local Gateway Route Table will be selected if any one of the given values matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetLocalGatewayRouteTablesFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetLocalGatewayRouteTablesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetLocalGatewayRouteTablesFilter.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayRouteTablesFilter(
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

