// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLocalGatewayVirtualInterfaceGroupsFilter {
  /// Name of the filter.
  final pulumi.Input<String> name;

  /// List of one or more values for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetLocalGatewayVirtualInterfaceGroupsFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  GetLocalGatewayVirtualInterfaceGroupsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetLocalGatewayVirtualInterfaceGroupsFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLocalGatewayVirtualInterfaceGroupsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
