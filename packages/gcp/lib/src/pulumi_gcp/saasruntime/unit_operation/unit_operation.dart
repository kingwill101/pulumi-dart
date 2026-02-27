import 'package:pulumi/pulumi.dart';
import '../unit_operation_condition/unit_operation_condition.dart';
import '../unit_operation_provision/unit_operation_provision.dart';
import '../unit_operation_upgrade/unit_operation_upgrade.dart';
import 'unit_operation_args.dart';

/// A UnitOperation encapsulates the intent to change or interact with a Unit. Operations such as provisioning, upgrading, or deprovisioning a Unit are triggered by creating a UnitOperation resource.
///
///
///
/// ## Example Usage
///
/// ### Saas Runtime Unit Operation Basic
///
///
///
///
/// ## Import
///
/// UnitOperation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/unitOperations/{{unit_operation_id}}`
///
/// * `{{project}}/{{location}}/{{unit_operation_id}}`
///
/// * `{{location}}/{{unit_operation_id}}`
///
/// When using the `pulumi import` command, UnitOperation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitOperation:UnitOperation default projects/{{project}}/locations/{{location}}/unitOperations/{{unit_operation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitOperation:UnitOperation default {{project}}/{{location}}/{{unit_operation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitOperation:UnitOperation default {{location}}/{{unit_operation_id}}
/// ```
class UnitOperation extends CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// A set of conditions which indicate the various conditions this resource can
  /// have.
  /// Structure is documented below.
  late final Output<List<UnitOperationCondition>> conditions;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Deprovision is the unit operation that deprovision the underlying
  /// resources represented by a Unit. Can only execute if the Unit is currently
  /// provisioned.
  late final Output<Map<String, dynamic>?> deprovision;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The engine state for on-going
  /// deployment engine operation(s).
  /// This field is opaque for external usage.
  late final Output<String> engineState;

  /// Possible values:
  /// NOT_APPLICABLE
  /// FATAL
  /// RETRIABLE
  /// IGNORABLE
  /// STANDARD
  late final Output<String> errorCategory;

  /// An opaque value that uniquely identifies a version or
  /// generation of a resource. It can be used to confirm that the client
  /// and server agree on the ordering of a resource being written.
  late final Output<String> etag;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/unitOperations/{unitOperation}"
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Provision is the unit operation that provision the underlying resources
  /// represented by a Unit. Can only execute if the Unit is not currently
  /// provisioned.
  /// Structure is documented below.
  late final Output<UnitOperationProvision?> provision;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// UnitOperationState describes the current state of the unit operation.
  /// Possible values:
  /// UNIT_OPERATION_STATE_UNKNOWN
  /// UNIT_OPERATION_STATE_PENDING
  /// UNIT_OPERATION_STATE_SCHEDULED
  /// UNIT_OPERATION_STATE_RUNNING
  /// UNIT_OPERATION_STATE_SUCCEEDED
  /// UNIT_OPERATION_STATE_FAILED
  /// UNIT_OPERATION_STATE_CANCELLED
  late final Output<String> state;

  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final Output<String> uid;

  /// The Unit a given UnitOperation will act upon.
  late final Output<String> unit;

  /// The ID value for the new unit operation.
  late final Output<String> unitOperationId;

  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final Output<String> updateTime;

  /// Upgrade is the unit operation that upgrades a provisioned unit, which may
  /// also include the underlying resources represented by a Unit. Can only execute
  /// if the Unit is currently provisioned.
  /// Structure is documented below.
  late final Output<UnitOperationUpgrade?> upgrade;

  /// If true, wait for the UnitOperation to reach a terminal state (SUCCEEDED, FAILED, CANCELLED)
  /// before completing the apply.
  late final Output<bool?> waitForCompletion;

  UnitOperation(
    String name, {
    UnitOperationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:saasruntime/unitOperation:UnitOperation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.conditions =
        registerOutput<List<UnitOperationCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.deprovision = registerOutput<Map<String, dynamic>?>('deprovision');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.engineState = registerOutput<String>('engineState');
    this.errorCategory = registerOutput<String>('errorCategory');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.provision = registerOutput<UnitOperationProvision?>('provision');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.unit = registerOutput<String>('unit');
    this.unitOperationId = registerOutput<String>('unitOperationId');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgrade = registerOutput<UnitOperationUpgrade?>('upgrade');
    this.waitForCompletion = registerOutput<bool?>('waitForCompletion');
  }
}
