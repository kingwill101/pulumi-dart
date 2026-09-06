// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameter for a Geneva action
class GenevaActionParameterResponse {
  /// Name of the parameter
  final pulumi.Input<String?>? name;
  /// Type of the parameter
  final pulumi.Input<String?>? type;

  /// Creates a new [GenevaActionParameterResponse].
  /// [name] Name of the parameter
  /// [type] Type of the parameter
  const GenevaActionParameterResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory GenevaActionParameterResponse.fromMap(Map<String, dynamic> map) {
    return GenevaActionParameterResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
