import 'package:pulumi/pulumi.dart';
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
class Workload extends CustomResource {
  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final Output<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  late final Output<WorkloadAttributes?> attributes;

  /// Output only. Create time.
  late final Output<String> createTime;

  /// User-defined description of a Workload.
  late final Output<String?> description;

  /// Immutable. The resource name of the original discovered workload.
  late final Output<String> discoveredWorkload;

  /// User-defined name for the Workload.
  late final Output<String?> displayName;

  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final Output<String> location;

  /// Identifier. The resource name of the Workload. Format:"projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}"
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. Workload state. Possible values:  STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  late final Output<String> state;

  /// Output only. A universally unique identifier (UUID) for the `Workload` in the UUID4 format.
  late final Output<String> uid;

  /// Output only. Update time.
  late final Output<String> updateTime;

  /// The Workload identifier.
  late final Output<String> workloadId;

  /// Properties of an underlying compute resource represented by the Workload.
  /// Structure is documented below.
  late final Output<List<WorkloadWorkloadProperty>> workloadProperties;

  /// Reference of an underlying compute resource represented by the Workload.
  /// Structure is documented below.
  late final Output<List<WorkloadWorkloadReference>> workloadReferences;

  Workload(
    String name, {
    WorkloadArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/workload:Workload',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = Output.createUnknown<String>();
    this.attributes = Output.createUnknown<WorkloadAttributes?>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.discoveredWorkload = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.workloadId = Output.createUnknown<String>();
    this.workloadProperties =
        Output.createUnknown<List<WorkloadWorkloadProperty>>();
    this.workloadReferences =
        Output.createUnknown<List<WorkloadWorkloadReference>>();
  }
}
