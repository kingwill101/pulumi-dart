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
  FormTypeArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> domainIdentifier,
    required pulumi.Output<FormTypeModel> model,
    pulumi.Output<String>? name,
    required pulumi.Output<String> owningProjectIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<FormTypeTimeouts>? timeouts,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asInput<String>(domainIdentifier),
      model = pulumi.Input.asInput<FormTypeModel>(model),
      name = pulumi.Input.asOptionalInput<String>(name),
      owningProjectIdentifier = pulumi.Input.asInput<String>(owningProjectIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      timeouts = pulumi.Input.asOptionalInput<FormTypeTimeouts>(timeouts);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: pulumi.Output.create<String>(map['domainIdentifier'] as String),
      model: pulumi.Output.create<FormTypeModel>(FormTypeModel.fromMap((map['model'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owningProjectIdentifier: pulumi.Output.create<String>(map['owningProjectIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<FormTypeTimeouts>(FormTypeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

