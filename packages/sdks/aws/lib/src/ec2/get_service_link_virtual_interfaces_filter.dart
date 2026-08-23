// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceLinkVirtualInterfacesFilter {
  /// Name of the filter.
  final pulumi.Input<String> name;
  /// List of one or more values for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetServiceLinkVirtualInterfacesFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  const GetServiceLinkVirtualInterfacesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetServiceLinkVirtualInterfacesFilter.fromMap(Map<String, dynamic> map) {
    return GetServiceLinkVirtualInterfacesFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
