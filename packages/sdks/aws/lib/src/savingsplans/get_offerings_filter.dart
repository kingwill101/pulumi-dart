// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOfferingsFilter {
  /// Filter name.
  final pulumi.Input<String> name;
  /// List of filter values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetOfferingsFilter].
  /// [name] Filter name.
  /// [values] List of filter values.
  const GetOfferingsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetOfferingsFilter.fromMap(Map<String, dynamic> map) {
    return GetOfferingsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
