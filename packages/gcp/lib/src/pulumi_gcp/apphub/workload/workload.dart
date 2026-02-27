import 'package:pulumi/pulumi.dart' as pulumi;
import '../workload_attributes/workload_attributes.dart';
import '../workload_workload_property/workload_workload_property.dart';
import '../workload_workload_reference/workload_workload_reference.dart';
import 'workload_args.dart';

/// Workload represents a binary deployment (such as Managed Instance Groups (MIGs), GKE deployments, etc.) that performs the smallest logical subset of business functionality. It registers identified workload to the Application.
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// Workload can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/applications/{{application_id}}/workloads/{{workload_id}}`
///
/// * `{{project}}/{{location}}/{{application_id}}/{{workload_id}}`
///
/// * `{{location}}/{{application_id}}/{{workload_id}}`
///
/// When using the `pulumi import` command, Workload can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/workload:Workload default projects/{{project}}/locations/{{location}}/applications/{{application_id}}/workloads/{{workload_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/workload:Workload default {{project}}/{{location}}/{{application_id}}/{{workload_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/workload:Workload default {{location}}/{{application_id}}/{{workload_id}}
/// ```
class Workload extends pulumi.CustomResource {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final pulumi.Output<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  late final pulumi.Output<WorkloadAttributes?> attributes;

  /// Output only. Create time.
  late final pulumi.Output<String> createTime;

  /// User-defined description of a Workload.
  late final pulumi.Output<String?> description;

  /// Immutable. The resource name of the original discovered workload.
  late final pulumi.Output<String> discoveredWorkload;

  /// User-defined name for the Workload.
  late final pulumi.Output<String?> displayName;

  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the Workload. Format:"projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. Workload state. Possible values:  STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  late final pulumi.Output<String> state;

  /// Output only. A universally unique identifier (UUID) for the `Workload` in the UUID4 format.
  late final pulumi.Output<String> uid;

  /// Output only. Update time.
  late final pulumi.Output<String> updateTime;

  /// The Workload identifier.
  late final pulumi.Output<String> workloadId;

  /// Properties of an underlying compute resource represented by the Workload.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkloadWorkloadProperty>> workloadProperties;

  /// Reference of an underlying compute resource represented by the Workload.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkloadWorkloadReference>> workloadReferences;

  Workload(
    String name, {
    WorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/workload:Workload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.attributes = registerOutput<WorkloadAttributes?>('attributes');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.discoveredWorkload = registerOutput<String>('discoveredWorkload');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workloadId = registerOutput<String>('workloadId');
    this.workloadProperties =
        registerOutput<List<WorkloadWorkloadProperty>>('workloadProperties');
    this.workloadReferences =
        registerOutput<List<WorkloadWorkloadReference>>('workloadReferences');
  }
}
