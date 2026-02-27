import 'package:pulumi/pulumi.dart';
import '../unit_kind_dependency/unit_kind_dependency.dart';
import '../unit_kind_input_variable_mapping/unit_kind_input_variable_mapping.dart';
import '../unit_kind_output_variable_mapping/unit_kind_output_variable_mapping.dart';
import 'unit_kind_args.dart';

/// A UnitKind serves as a template or type definition for a group of Units. Units that belong to the same UnitKind are managed together, follow the same release model, and are typically updated together through rollouts.
///
///
/// ## Example Usage
///
/// ### Saas Runtime Unit Kind Basic
///
///
///
///
/// ## Import
///
/// UnitKind can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/unitKinds/{{unit_kind_id}}`
///
/// * `{{project}}/{{location}}/{{unit_kind_id}}`
///
/// * `{{location}}/{{unit_kind_id}}`
///
/// When using the `pulumi import` command, UnitKind can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitKind:UnitKind default projects/{{project}}/locations/{{location}}/unitKinds/{{unit_kind_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitKind:UnitKind default {{project}}/{{location}}/{{unit_kind_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitKind:UnitKind default {{location}}/{{unit_kind_id}}
/// ```
class UnitKind extends CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// A reference to the Release object to use as default for creating new units
  /// of this UnitKind.
  /// If not specified, a new unit must explicitly reference which release to use
  /// for its creation.
  late final Output<String?> defaultRelease;

  /// List of other unit kinds that this release will depend on. Dependencies
  /// will be automatically provisioned if not found. Maximum 10.
  /// Structure is documented below.
  late final Output<List<UnitKindDependency>?> dependencies;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// An opaque value that uniquely identifies a version or
  /// generation of a resource. It can be used to confirm that the client
  /// and server agree on the ordering of a resource being written.
  late final Output<String> etag;

  /// List of inputVariables for this release that will either be retrieved from
  /// a dependency’s outputVariables, or will be passed on to a dependency’s
  /// inputVariables. Maximum 100.
  /// Structure is documented below.
  late final Output<List<UnitKindInputVariableMapping>?> inputVariableMappings;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/unitKinds/{unitKind}"
  late final Output<String> name;

  /// List of outputVariables for this unit kind will be passed to this unit's
  /// outputVariables. Maximum 100.
  /// Structure is documented below.
  late final Output<List<UnitKindOutputVariableMapping>?>
      outputVariableMappings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with SaaS Runtime. Part of the SaaS Runtime
  /// common data model. Immutable once set.
  late final Output<String> saas;

  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final Output<String> uid;

  /// The ID value for the new unit kind.
  late final Output<String> unitKindId;

  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final Output<String> updateTime;

  UnitKind(
    String name, {
    UnitKindArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:saasruntime/unitKind:UnitKind',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.defaultRelease = registerOutput<String?>('defaultRelease');
    this.dependencies =
        registerOutput<List<UnitKindDependency>?>('dependencies');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.inputVariableMappings =
        registerOutput<List<UnitKindInputVariableMapping>?>(
            'inputVariableMappings');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.outputVariableMappings =
        registerOutput<List<UnitKindOutputVariableMapping>?>(
            'outputVariableMappings');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.saas = registerOutput<String>('saas');
    this.uid = registerOutput<String>('uid');
    this.unitKindId = registerOutput<String>('unitKindId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
