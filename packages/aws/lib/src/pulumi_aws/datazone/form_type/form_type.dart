import 'package:pulumi/pulumi.dart';
import '../form_type_import/form_type_import.dart';
import '../form_type_model/form_type_model.dart';
import '../form_type_timeouts/form_type_timeouts.dart';
import 'form_type_args.dart';

/// Resource for managing an AWS DataZone Form Type.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Form Type using a comma separated value of `domain_identifier`,`name`,`revision`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/formType:FormType example domain_identifier,name,revision
/// ```
class FormType extends CustomResource {
  /// Creation time of the Form Type.
  late final Output<String> createdAt;

  /// Creator of the Form Type.
  late final Output<String> createdBy;

  /// Description of form type. Must have a length of between 1 and 2048 characters.
  late final Output<String?> description;

  /// Identifier of the domain.
  late final Output<String> domainIdentifier;
  late final Output<List<FormTypeImport>> imports;

  /// Object of the model of the form type that contains the following attributes.
  late final Output<FormTypeModel> model;

  /// Name of the form type. Must be the name of the structure in smithy document.
  late final Output<String> name;

  /// Origin domain id of the Form Type.
  late final Output<String> originDomainId;

  /// Origin project id of the Form Type.
  late final Output<String> originProjectId;

  /// Identifier of project that owns the form type. Must follow regex of ^[a-zA-Z0-9_-]{1,36}.
  late final Output<String> owningProjectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Revision of the Form Type.
  late final Output<String> revision;

  /// Status of form type. Must be "ENABLED" or "DISABLED" If status is set to "ENABLED" terraform cannot delete the resource until it is manually changed in the AWS console.
  late final Output<String> status;
  late final Output<FormTypeTimeouts?> timeouts;

  FormType(
    String name, {
    FormTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/formType:FormType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.imports = registerOutput<List<FormTypeImport>>('imports');
    this.model = registerOutput<FormTypeModel>('model');
    this.name = registerOutput<String>('name');
    this.originDomainId = registerOutput<String>('originDomainId');
    this.originProjectId = registerOutput<String>('originProjectId');
    this.owningProjectIdentifier =
        registerOutput<String>('owningProjectIdentifier');
    this.region = registerOutput<String>('region');
    this.revision = registerOutput<String>('revision');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<FormTypeTimeouts?>('timeouts');
  }
}
