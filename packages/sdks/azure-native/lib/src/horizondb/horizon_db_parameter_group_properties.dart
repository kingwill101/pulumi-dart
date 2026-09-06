// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_properties.dart';

/// Properties of a HorizonDB parameter group.
class HorizonDbParameterGroupProperties {
  /// Indicates whether the parameters should be applied immediately.
  final pulumi.Input<bool?>? applyImmediately;
  /// Description of the parameter group.
  final pulumi.Input<String?>? description;
  /// Parameters in the parameter group.
  final pulumi.Input<List<ParameterProperties>?>? parameters;
  /// PostgreSQL version for the parameter group.
  final pulumi.Input<int?>? pgVersion;

  /// Creates a new [HorizonDbParameterGroupProperties].
  /// [applyImmediately] Indicates whether the parameters should be applied immediately.
  /// [description] Description of the parameter group.
  /// [parameters] Parameters in the parameter group.
  /// [pgVersion] PostgreSQL version for the parameter group.
  const HorizonDbParameterGroupProperties({
    this.applyImmediately,
    this.description,
    this.parameters,
    this.pgVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'description': ?description,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterProperties>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pgVersion': ?pgVersion,
    };
  }

  factory HorizonDbParameterGroupProperties.fromMap(Map<String, dynamic> map) {
    return HorizonDbParameterGroupProperties(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterProperties>(guardedValue, (value) => ParameterProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pgVersion: (() { final guardedValue = map['pgVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
