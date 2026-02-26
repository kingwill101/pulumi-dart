import 'package:pulumi/pulumi.dart';
import 'runtime_access_config_response.dart';
import 'runtime_args.dart';
import 'runtime_metrics_response.dart';
import 'runtime_migration_eligibility_response.dart';
import 'runtime_software_config_response.dart';
import 'virtual_machine_response2.dart';

/// Creates a new Runtime in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Runtime extends CustomResource {
  /// The config settings for accessing runtime.
  late final Output<RuntimeAccessConfigResponse> accessConfig;

  /// Runtime creation time.
  late final Output<String> createTime;

  /// Runtime health_state.
  late final Output<String> healthState;

  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Contains Runtime daemon metrics such as Service status and JupyterLab stats.
  late final Output<RuntimeMetricsResponse> metrics;

  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  late final Output<bool> migrated;

  /// The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  late final Output<String> name;
  late final Output<String> project;

  /// Idempotent request UUID.
  late final Output<String?> requestId;

  /// Required. User-defined unique ID of this Runtime.
  late final Output<String> runtimeId;

  /// Checks how feasible a migration from GmN to WbI is.
  late final Output<RuntimeMigrationEligibilityResponse>
      runtimeMigrationEligibility;

  /// The config settings for software inside the runtime.
  late final Output<RuntimeSoftwareConfigResponse> softwareConfig;

  /// Runtime state.
  late final Output<String> state;

  /// Runtime update time.
  late final Output<String> updateTime;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  late final Output<VirtualMachineResponse2> virtualMachine;

  Runtime(
    String name, {
    RuntimeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v1:Runtime',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessConfig = Output.createUnknown<RuntimeAccessConfigResponse>();
    this.createTime = Output.createUnknown<String>();
    this.healthState = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.metrics = Output.createUnknown<RuntimeMetricsResponse>();
    this.migrated = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.runtimeId = Output.createUnknown<String>();
    this.runtimeMigrationEligibility =
        Output.createUnknown<RuntimeMigrationEligibilityResponse>();
    this.softwareConfig = Output.createUnknown<RuntimeSoftwareConfigResponse>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.virtualMachine = Output.createUnknown<VirtualMachineResponse2>();
  }
}
