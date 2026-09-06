// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameter for a Geneva action
class GenevaActionParameter {
  /// Name of the parameter
  final pulumi.Input<String?>? name;
  /// Type of the parameter
  final pulumi.Input<String?>? type;

  /// Creates a new [GenevaActionParameter].
  /// [name] Name of the parameter
  /// [type] Type of the parameter
  const GenevaActionParameter({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory GenevaActionParameter.fromMap(Map<String, dynamic> map) {
    return GenevaActionParameter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
