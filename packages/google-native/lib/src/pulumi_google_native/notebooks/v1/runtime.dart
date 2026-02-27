import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config_response.dart';
import 'runtime_args.dart';
import 'runtime_metrics_response.dart';
import 'runtime_migration_eligibility_response.dart';
import 'runtime_software_config_response.dart';
import 'virtual_machine_response_notebooks_v1.dart';

/// Creates a new Runtime in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Runtime extends pulumi.CustomResource {
  /// The config settings for accessing runtime.
  late final pulumi.Output<RuntimeAccessConfigResponse> accessConfig;

  /// Runtime creation time.
  late final pulumi.Output<String> createTime;

  /// Runtime health_state.
  late final pulumi.Output<String> healthState;

  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Contains Runtime daemon metrics such as Service status and JupyterLab stats.
  late final pulumi.Output<RuntimeMetricsResponse> metrics;

  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  late final pulumi.Output<bool> migrated;

  /// The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Idempotent request UUID.
  late final pulumi.Output<String?> requestId;

  /// Required. User-defined unique ID of this Runtime.
  late final pulumi.Output<String> runtimeId;

  /// Checks how feasible a migration from GmN to WbI is.
  late final pulumi.Output<RuntimeMigrationEligibilityResponse>
      runtimeMigrationEligibility;

  /// The config settings for software inside the runtime.
  late final pulumi.Output<RuntimeSoftwareConfigResponse> softwareConfig;

  /// Runtime state.
  late final pulumi.Output<String> state;

  /// Runtime update time.
  late final pulumi.Output<String> updateTime;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  late final pulumi.Output<VirtualMachineResponseNotebooksV1> virtualMachine;

  Runtime(
    String name, {
    RuntimeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v1:Runtime',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessConfig =
        registerOutput<RuntimeAccessConfigResponse>('accessConfig');
    this.createTime = registerOutput<String>('createTime');
    this.healthState = registerOutput<String>('healthState');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.metrics = registerOutput<RuntimeMetricsResponse>('metrics');
    this.migrated = registerOutput<bool>('migrated');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.runtimeId = registerOutput<String>('runtimeId');
    this.runtimeMigrationEligibility =
        registerOutput<RuntimeMigrationEligibilityResponse>(
            'runtimeMigrationEligibility');
    this.softwareConfig =
        registerOutput<RuntimeSoftwareConfigResponse>('softwareConfig');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualMachine =
        registerOutput<VirtualMachineResponseNotebooksV1>('virtualMachine');
  }
}
