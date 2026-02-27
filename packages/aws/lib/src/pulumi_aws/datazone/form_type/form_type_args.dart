// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../form_type_model/form_type_model.dart';
import '../form_type_timeouts/form_type_timeouts.dart';

/// The set of arguments for FormType.
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

  FormTypeArgs({
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainIdentifier'] = domainIdentifier;
    map['model'] =
        pulumi.Input.mapInputValue<FormTypeModel, Map<String, dynamic>>(
            model, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['owningProjectIdentifier'] = owningProjectIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<FormTypeTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FormTypeArgs.fromMap(Map<String, dynamic> map) {
    return FormTypeArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainIdentifier: pulumi.Input.asInput<String>(map['domainIdentifier']),
      model: pulumi.Input.asInput<FormTypeModel>(map['model']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      owningProjectIdentifier:
          pulumi.Input.asInput<String>(map['owningProjectIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      timeouts: pulumi.Input.asOptionalInput<FormTypeTimeouts>(map['timeouts']),
    );
  }
}
