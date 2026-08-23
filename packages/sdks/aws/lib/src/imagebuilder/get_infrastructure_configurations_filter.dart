// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInfrastructureConfigurationsFilter {
  /// Name of the filter field. Valid values can be found in the [Image Builder ListInfrastructureConfigurations API Reference](https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_ListInfrastructureConfigurations.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetInfrastructureConfigurationsFilter].
  /// [name] Name of the filter field. Valid values can be found in the [Image Builder ListInfrastructureConfigurations API Reference](https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_ListInfrastructureConfigurations.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  const GetInfrastructureConfigurationsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetInfrastructureConfigurationsFilter.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
