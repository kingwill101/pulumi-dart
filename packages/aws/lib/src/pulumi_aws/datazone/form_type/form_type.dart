import 'package:pulumi/pulumi.dart' as pulumi;
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
class FormType extends pulumi.CustomResource {
  /// Creation time of the Form Type.
  late final pulumi.Output<String> createdAt;

  /// Creator of the Form Type.
  late final pulumi.Output<String> createdBy;

  /// Description of form type. Must have a length of between 1 and 2048 characters.
  late final pulumi.Output<String?> description;

  /// Identifier of the domain.
  late final pulumi.Output<String> domainIdentifier;
  late final pulumi.Output<List<FormTypeImport>> imports;

  /// Object of the model of the form type that contains the following attributes.
  late final pulumi.Output<FormTypeModel> model;

  /// Name of the form type. Must be the name of the structure in smithy document.
  late final pulumi.Output<String> name;

  /// Origin domain id of the Form Type.
  late final pulumi.Output<String> originDomainId;

  /// Origin project id of the Form Type.
  late final pulumi.Output<String> originProjectId;

  /// Identifier of project that owns the form type. Must follow regex of ^[a-zA-Z0-9_-]{1,36}.
  late final pulumi.Output<String> owningProjectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Revision of the Form Type.
  late final pulumi.Output<String> revision;

  /// Status of form type. Must be "ENABLED" or "DISABLED" If status is set to "ENABLED" terraform cannot delete the resource until it is manually changed in the AWS console.
  late final pulumi.Output<String> status;
  late final pulumi.Output<FormTypeTimeouts?> timeouts;

  FormType(
    String name, {
    FormTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/formType:FormType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
