// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNestServiceInstancesFilter {
  /// The name of the service.
  final pulumi.Input<String>? name;
  /// Set of values that are accepted for the given field.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GetNestServiceInstancesFilter].
  /// [name] The name of the service.
  /// [values] Set of values that are accepted for the given field.
  GetNestServiceInstancesFilter({
    this.name,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'values': ?values,
    };
  }

  factory GetNestServiceInstancesFilter.fromMap(Map<String, dynamic> map) {
    return GetNestServiceInstancesFilter(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

