// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceShareFilter {
  /// Name of the tag key to filter on.
  final pulumi.Input<String> name;
  /// Value of the tag key.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetResourceShareFilter].
  /// [name] Name of the tag key to filter on.
  /// [values] Value of the tag key.
  GetResourceShareFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetResourceShareFilter.fromMap(Map<String, dynamic> map) {
    return GetResourceShareFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

