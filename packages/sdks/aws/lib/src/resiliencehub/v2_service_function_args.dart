// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resiliencehub_v2_service_function_v2_service_function_args_doc}
/// The set of arguments for V2ServiceFunction.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_v2_service_function_v2_service_function_args_doc}
class V2ServiceFunctionArgs {
  /// Criticality level of the service function. Valid values: `PRIMARY`, `SUPPLEMENTAL`.
  final pulumi.Input<String> criticality;
  /// Description of the service function.
  final pulumi.Input<String?>? description;
  /// Name of the service function.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the service this function belongs to. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceArn;

  /// Creates a new [V2ServiceFunctionArgs].
  /// [criticality] Criticality level of the service function. Valid values: `PRIMARY`, `SUPPLEMENTAL`.
  /// [description] Description of the service function.
  /// [name] Name of the service function.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the service this function belongs to. Changing this value requires creating a new resource.
  const V2ServiceFunctionArgs({
    required this.criticality,
    this.description,
    this.name,
    this.region,
    required this.serviceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criticality': criticality,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'serviceArn': serviceArn,
    };
  }

  factory V2ServiceFunctionArgs.fromMap(Map<String, dynamic> map) {
    return V2ServiceFunctionArgs(
      criticality: pulumi.Input.fromValue(map['criticality'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: pulumi.Input.fromValue(map['serviceArn'] as String),
    );
  }
}
