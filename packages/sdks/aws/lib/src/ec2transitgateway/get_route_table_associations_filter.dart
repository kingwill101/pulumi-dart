// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteTableAssociationsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetTransitGatewayRouteTableAssociations.html).
  final pulumi.Input<String> name;

  /// Set of values that are accepted for the given field.
  /// A Transit Gateway Route Table will be selected if any one of the given values matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetRouteTableAssociationsFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetRouteTableAssociationsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetRouteTableAssociationsFilter.fromMap(Map<String, dynamic> map) {
    return GetRouteTableAssociationsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
