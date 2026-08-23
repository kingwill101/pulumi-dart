// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'form_type_model.dart';
import 'form_type_timeouts.dart';

/// {@template pulumi_datazone_form_type_form_type_args_doc}
/// The set of arguments for FormType.
/// {@endtemplate}
/// {@macro pulumi_datazone_form_type_form_type_args_doc}
class FormTypeArgs {
  /// Description of form type. Must have a length of between 1 and 2048 characters.
  final pulumi.Input<String>? description;
  /// Identifier of the domain.
  final pulumi.Input<String> domainIdentifier;
  /// Object of the model of the form type that contains the following attributes.
  final pulumi.Input<FormTypeModel> model;
  /// Name of the form type. Must be the name of the structure in smithy document.
  final pulumi.Input<String>? name;
  /// Identifier of project that owns the form type. Must follow regex of ^[a-zA-Z0-9_-]{1,36}.
  final pulumi.Input<String> owningProjectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of form type. Must be "ENABLED" or "DISABLED" If status is set to "ENABLED" terraform cannot delete the resource until it is manually changed in the AWS console.
  final pulumi.Input<String>? status;
  final pulumi.Input<FormTypeTimeouts>? timeouts;

  /// Creates a new [FormTypeArgs].
  /// [description] Description of form type. Must have a length of between 1 and 2048 characters.
  /// [domainIdentifier] Identifier of the domain.
  /// [model] Object of the model of the form type that contains the following attributes.
  /// [name] Name of the form type. Must be the name of the structure in smithy document.
  /// [owningProjectIdentifier] Identifier of project that owns the form type. Must follow regex of ^[a-zA-Z0-9_-]{1,36}.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of form type. Must be "ENABLED" or "DISABLED" If status is set to "ENABLED" terraform cannot delete the resource until it is manually changed in the AWS console.
  /// [timeouts] Optional.
  const FormTypeArgs({
    this.description,
    required this.domainIdentifier,
    required this.model,
    this.name,
    required this.owningProjectIdentifier,
    this.region,
    this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainIdentifier': domainIdentifier,
      'model': pulumi.Input.mapInputValue<FormTypeModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'name': ?name,
      'owningProjectIdentifier': owningProjectIdentifier,
      'region': ?region,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FormTypeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FormTypeArgs.fromMap(Map<String, dynamic> map) {
    return FormTypeArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainIdentifier: pulumi.Input.fromValue(map['domainIdentifier'] as String),
      model: pulumi.Input.fromValue(FormTypeModel.fromMap((map['model']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owningProjectIdentifier: pulumi.Input.fromValue(map['owningProjectIdentifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FormTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
