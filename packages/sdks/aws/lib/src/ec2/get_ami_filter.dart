// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAmiFilter {
  /// Name of the AMI that was provided during image creation.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetAmiFilter].
  /// [name] Name of the AMI that was provided during image creation.
  /// [values] Required.
  GetAmiFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetAmiFilter.fromMap(Map<String, dynamic> map) {
    return GetAmiFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
