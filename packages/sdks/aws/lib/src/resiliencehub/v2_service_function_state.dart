// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V2ServiceFunction resources.
class V2ServiceFunctionState {
  /// Criticality level of the service function. Valid values: `PRIMARY`, `SUPPLEMENTAL`.
  final pulumi.Input<String?>? criticality;
  /// Description of the service function.
  final pulumi.Input<String?>? description;
  /// Name of the service function.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the service this function belongs to. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? serviceArn;
  /// Unique identifier of the service function.
  final pulumi.Input<String?>? serviceFunctionId;

  /// Creates a new [V2ServiceFunctionState].
  /// [criticality] Criticality level of the service function. Valid values: `PRIMARY`, `SUPPLEMENTAL`.
  /// [description] Description of the service function.
  /// [name] Name of the service function.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the service this function belongs to. Changing this value requires creating a new resource.
  /// [serviceFunctionId] Unique identifier of the service function.
  const V2ServiceFunctionState({
    this.criticality,
    this.description,
    this.name,
    this.region,
    this.serviceArn,
    this.serviceFunctionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criticality': ?criticality,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'serviceFunctionId': ?serviceFunctionId,
    };
  }

  factory V2ServiceFunctionState.fromMap(Map<String, dynamic> map) {
    return V2ServiceFunctionState(
      criticality: (() { final guardedValue = map['criticality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceFunctionId: (() { final guardedValue = map['serviceFunctionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
