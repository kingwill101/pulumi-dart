// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceParameter {
  /// Field `parameters` has been deprecated from provider version 1.101.0 and `config` instead.
  final pulumi.Input<String>? name;
  /// Field `parameters` has been deprecated from provider version 1.101.0 and `config` instead.
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceParameter].
  /// [name] Field `parameters` has been deprecated from provider version 1.101.0 and `config` instead.
  /// [value] Field `parameters` has been deprecated from provider version 1.101.0 and `config` instead.
  InstanceParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory InstanceParameter.fromMap(Map<String, dynamic> map) {
    return InstanceParameter(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

