import 'package:pulumi/pulumi.dart';
import '../unit_condition/unit_condition.dart';
import '../unit_dependency/unit_dependency.dart';
import '../unit_dependent/unit_dependent.dart';
import '../unit_input_variable/unit_input_variable.dart';
import '../unit_maintenance/unit_maintenance.dart';
import '../unit_output_variable/unit_output_variable.dart';
import 'unit_args.dart';

/// A Unit is the fundamental structural building block of a SaaS offering. Each Unit is an instance of a UnitKind. It is a versioned, manageable component of a service that has its own lifecycle, representing elements like infrastructure, workloads, or an entire application stack that a service producer intends to manage as a single entity.
///
///
///
/// ## Example Usage
///
/// ### Saas Runtime Unit Basic
///
///
///
///
/// ## Import
///
/// Unit can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/units/{{unit_id}}`
///
/// * `{{project}}/{{location}}/{{unit_id}}`
///
/// * `{{location}}/{{unit_id}}`
///
/// When using the `pulumi import` command, Unit can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unit:Unit default projects/{{project}}/locations/{{location}}/units/{{unit_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unit:Unit default {{project}}/{{location}}/{{unit_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unit:Unit default {{location}}/{{unit_id}}
/// ```
class Unit extends CustomResource {
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
  late final Output<List<UnitCondition>> conditions;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Set of dependencies for this unit. Maximum 10.
  /// Structure is documented below.
  late final Output<List<UnitDependency>> dependencies;

  /// List of Units that depend on this unit. Unit can only be deprovisioned if
  /// this list is empty. Maximum 1000.
  /// Structure is documented below.
  late final Output<List<UnitDependent>> dependents;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Indicates the current input variables deployed by the unit
  /// Structure is documented below.
  late final Output<List<UnitInputVariable>> inputVariables;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Captures requested directives for performing future maintenance on the
  /// unit. This includes a request for the unit to skip maintenance for a period
  /// of time and remain pinned to its current release as well as controls for
  /// postponing maintenance scheduled in future.
  /// Structure is documented below.
  late final Output<UnitMaintenance?> maintenance;

  /// Indicates whether the Unit life cycle is controlled
  /// by the user or by the system.
  /// Immutable once created.
  /// Possible values:
  /// MANAGEMENT_MODE_USER
  /// MANAGEMENT_MODE_SYSTEM
  late final Output<String?> managementMode;

  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/units/{unit}"
  late final Output<String> name;

  /// List of concurrent UnitOperations that are operating on this Unit.
  late final Output<List<String>> ongoingOperations;
  late final Output<List<UnitOutputVariable>> outputVariables;

  /// List of pending (wait to be executed) UnitOperations for this unit.
  late final Output<List<String>> pendingOperations;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current Release object for this Unit.
  late final Output<String> release;

  /// List of scheduled UnitOperations for this unit.
  late final Output<List<String>> scheduledOperations;

  /// Current lifecycle state of the resource (e.g. if it's being
  /// created or ready to use).
  /// Possible values:
  /// UNIT_STATE_NOT_PROVISIONED
  /// UNIT_STATE_PROVISIONING
  /// UNIT_STATE_UPDATING
  /// UNIT_STATE_DEPROVISIONING
  /// UNIT_STATE_READY
  /// UNIT_STATE_ERROR
  late final Output<String> state;

  /// If set, indicates the time when the system will start removing the unit.
  late final Output<String> systemCleanupAt;

  /// Indicates the system managed state of the unit.
  /// Possible values:
  /// SYSTEM_MANAGED_STATE_ACTIVE
  /// SYSTEM_MANAGED_STATE_INACTIVE
  /// SYSTEM_MANAGED_STATE_DECOMMISSIONED
  late final Output<String> systemManagedState;

  /// Reference to the Saas Tenant resource this unit belongs to. This for
  /// example informs the maintenance policies to use for scheduling future
  /// updates on a unit. (optional and immutable once created)
  late final Output<String?> tenant;

  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final Output<String> uid;

  /// The ID value for the new unit.
  late final Output<String> unitId;

  /// Reference to the UnitKind this Unit belongs to. Immutable once set.
  late final Output<String?> unitKind;

  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final Output<String> updateTime;

  Unit(
    String name, {
    UnitArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:saasruntime/unit:Unit',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.conditions = registerOutput<List<UnitCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.dependencies = registerOutput<List<UnitDependency>>('dependencies');
    this.dependents = registerOutput<List<UnitDependent>>('dependents');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.inputVariables =
        registerOutput<List<UnitInputVariable>>('inputVariables');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maintenance = registerOutput<UnitMaintenance?>('maintenance');
    this.managementMode = registerOutput<String?>('managementMode');
    this.name = registerOutput<String>('name');
    this.ongoingOperations = registerOutput<List<String>>('ongoingOperations');
    this.outputVariables =
        registerOutput<List<UnitOutputVariable>>('outputVariables');
    this.pendingOperations = registerOutput<List<String>>('pendingOperations');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.release = registerOutput<String>('release');
    this.scheduledOperations =
        registerOutput<List<String>>('scheduledOperations');
    this.state = registerOutput<String>('state');
    this.systemCleanupAt = registerOutput<String>('systemCleanupAt');
    this.systemManagedState = registerOutput<String>('systemManagedState');
    this.tenant = registerOutput<String?>('tenant');
    this.uid = registerOutput<String>('uid');
    this.unitId = registerOutput<String>('unitId');
    this.unitKind = registerOutput<String?>('unitKind');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
