// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQueryLogConfigFilter {
  /// The name of the query logging configuration.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetQueryLogConfigFilter].
  /// [name] The name of the query logging configuration.
  /// [values] Required.
  const GetQueryLogConfigFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetQueryLogConfigFilter.fromMap(Map<String, dynamic> map) {
    return GetQueryLogConfigFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
