// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateFilter {
  /// The name of the launch template. If you leave this blank, the provider will auto-generate a unique name.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [LaunchTemplateFilter].
  /// [name] The name of the launch template. If you leave this blank, the provider will auto-generate a unique name.
  /// [values] Required.
  const LaunchTemplateFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory LaunchTemplateFilter.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
