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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainIdentifier,
    pulumi.Output<List<FormTypeImport>>? imports,
    pulumi.Output<FormTypeModel>? model,
    pulumi.Output<String>? name,
    pulumi.Output<String>? originDomainId,
    pulumi.Output<String>? originProjectId,
    pulumi.Output<String>? owningProjectIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? revision,
    pulumi.Output<String>? status,
    pulumi.Output<FormTypeTimeouts>? timeouts,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      imports = pulumi.Input.asOptionalInput<List<FormTypeImport>>(imports),
      model = pulumi.Input.asOptionalInput<FormTypeModel>(model),
      name = pulumi.Input.asOptionalInput<String>(name),
      originDomainId = pulumi.Input.asOptionalInput<String>(originDomainId),
      originProjectId = pulumi.Input.asOptionalInput<String>(originProjectId),
      owningProjectIdentifier = pulumi.Input.asOptionalInput<String>(owningProjectIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      revision = pulumi.Input.asOptionalInput<String>(revision),
      status = pulumi.Input.asOptionalInput<String>(status),
      timeouts = pulumi.Input.asOptionalInput<FormTypeTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'domainIdentifier': ?domainIdentifier,
      'imports': ?pulumi.Input.mapOptionalInputValue<List<FormTypeImport>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<FormTypeImport, Map<String, dynamic>>(value, (value) => value.toMap())),
      'model': ?pulumi.Input.mapOptionalInputValue<FormTypeModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'name': ?name,
      'originDomainId': ?originDomainId,
      'originProjectId': ?originProjectId,
      'owningProjectIdentifier': ?owningProjectIdentifier,
      'region': ?region,
      'revision': ?revision,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FormTypeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FormTypeState.fromMap(Map<String, dynamic> map) {
    return FormTypeState(
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: map['domainIdentifier'] == null ? null : pulumi.Output.create<String>(map['domainIdentifier'] as String),
      imports: map['imports'] == null ? null : pulumi.Output.create<List<FormTypeImport>>(pulumi.Input.decodeList<FormTypeImport>(map['imports'], (value) => FormTypeImport.fromMap((value as Map).cast<String, dynamic>()))),
      model: map['model'] == null ? null : pulumi.Output.create<FormTypeModel>(FormTypeModel.fromMap((map['model'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      originDomainId: map['originDomainId'] == null ? null : pulumi.Output.create<String>(map['originDomainId'] as String),
      originProjectId: map['originProjectId'] == null ? null : pulumi.Output.create<String>(map['originProjectId'] as String),
      owningProjectIdentifier: map['owningProjectIdentifier'] == null ? null : pulumi.Output.create<String>(map['owningProjectIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<String>(map['revision'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<FormTypeTimeouts>(FormTypeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

