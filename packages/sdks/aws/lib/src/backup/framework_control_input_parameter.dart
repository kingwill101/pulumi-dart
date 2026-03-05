// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrameworkControlInputParameter {
  /// The name of a parameter, for example, BackupPlanFrequency.
  final pulumi.Input<String>? name;
  /// The value of parameter, for example, hourly.
  final pulumi.Input<String>? value;

  /// Creates a new [FrameworkControlInputParameter].
  /// [name] The name of a parameter, for example, BackupPlanFrequency.
  /// [value] The value of parameter, for example, hourly.
  FrameworkControlInputParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory FrameworkControlInputParameter.fromMap(Map<String, dynamic> map) {
    return FrameworkControlInputParameter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

