// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'form_type_import.dart';
import 'form_type_model.dart';
import 'form_type_timeouts.dart';

/// Input properties used for looking up and filtering FormType resources.
class FormTypeState {
  /// Creation time of the Form Type.
  final pulumi.Input<String>? createdAt;

  /// Creator of the Form Type.
  final pulumi.Input<String>? createdBy;

  /// Description of form type. Must have a length of between 1 and 2048 characters.
  final pulumi.Input<String>? description;

  /// Identifier of the domain.
  final pulumi.Input<String>? domainIdentifier;
  final pulumi.Input<List<FormTypeImport>>? imports;

  /// Object of the model of the form type that contains the following attributes.
  final pulumi.Input<FormTypeModel>? model;

  /// Name of the form type. Must be the name of the structure in smithy document.
  final pulumi.Input<String>? name;

  /// Origin domain id of the Form Type.
  final pulumi.Input<String>? originDomainId;

  /// Origin project id of the Form Type.
  final pulumi.Input<String>? originProjectId;

  /// Identifier of project that owns the form type. Must follow regex of ^[a-zA-Z0-9_-]{1,36}.
  final pulumi.Input<String>? owningProjectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Revision of the Form Type.
  final pulumi.Input<String>? revision;

  /// Status of form type. Must be "ENABLED" or "DISABLED" If status is set to "ENABLED" terraform cannot delete the resource until it is manually changed in the AWS console.
  final pulumi.Input<String>? status;
  final pulumi.Input<FormTypeTimeouts>? timeouts;

  /// Creates a new [FormTypeState].
  /// [createdAt] Creation time of the Form Type.
  /// [createdBy] Creator of the Form Type.
  /// [description] Description of form type. Must have a length of between 1 and 2048 characters.
  /// [domainIdentifier] Identifier of the domain.
  /// [imports] Optional.
  /// [model] Object of the model of the form type that contains the following attributes.
  /// [name] Name of the form type. Must be the name of the structure in smithy document.
  /// [originDomainId] Origin domain id of the Form Type.
  /// [originProjectId] Origin project id of the Form Type.
  /// [owningProjectIdentifier] Identifier of project that owns the form type. Must follow regex of ^[a-zA-Z0-9_-]{1,36}.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revision] Revision of the Form Type.
  /// [status] Status of form type. Must be "ENABLED" or "DISABLED" If status is set to "ENABLED" terraform cannot delete the resource until it is manually changed in the AWS console.
  /// [timeouts] Optional.
  FormTypeState({
    this.createdAt,
    this.createdBy,
    this.description,
    this.domainIdentifier,
    this.imports,
    this.model,
    this.name,
    this.originDomainId,
    this.originProjectId,
    this.owningProjectIdentifier,
    this.region,
    this.revision,
    this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'domainIdentifier': ?domainIdentifier,
      'imports':
          ?pulumi.Input.mapOptionalInputValue<
            List<FormTypeImport>,
            List<Map<String, dynamic>>
          >(
            imports,
            (value) =>
                pulumi.Input.encodeList<FormTypeImport, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'model':
          ?pulumi.Input.mapOptionalInputValue<
            FormTypeModel,
            Map<String, dynamic>
          >(model, (value) => value.toMap()),
      'name': ?name,
      'originDomainId': ?originDomainId,
      'originProjectId': ?originProjectId,
      'owningProjectIdentifier': ?owningProjectIdentifier,
      'region': ?region,
      'revision': ?revision,
      'status': ?status,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            FormTypeTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory FormTypeState.fromMap(Map<String, dynamic> map) {
    return FormTypeState(
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdBy: (() {
        final guardedValue = map['createdBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainIdentifier: (() {
        final guardedValue = map['domainIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imports: (() {
        final guardedValue = map['imports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FormTypeImport>(
            guardedValue,
            (value) =>
                FormTypeImport.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FormTypeModel.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      originDomainId: (() {
        final guardedValue = map['originDomainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      originProjectId: (() {
        final guardedValue = map['originProjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      owningProjectIdentifier: (() {
        final guardedValue = map['owningProjectIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      revision: (() {
        final guardedValue = map['revision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FormTypeTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
