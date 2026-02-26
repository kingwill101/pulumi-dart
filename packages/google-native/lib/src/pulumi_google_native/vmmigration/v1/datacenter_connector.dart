import 'package:pulumi/pulumi.dart';
import 'available_updates_response.dart';
import 'datacenter_connector_args.dart';
import 'status_response30.dart';
import 'upgrade_status_response.dart';

/// Creates a new DatacenterConnector in a given Source.
/// Auto-naming is currently not supported for this resource.
class DatacenterConnector extends CustomResource {
  /// Appliance OVA version. This is the OVA which is manually installed by the user and contains the infrastructure for the automatically updatable components on the appliance.
  late final Output<String> applianceInfrastructureVersion;

  /// Appliance last installed update bundle version. This is the version of the automatically updatable components on the appliance.
  late final Output<String> applianceSoftwareVersion;

  /// The available versions for updating this appliance.
  late final Output<AvailableUpdatesResponse> availableVersions;

  /// The communication channel between the datacenter connector and Google Cloud.
  late final Output<String> bucket;

  /// The time the connector was created (as an API call, not when it was actually installed).
  late final Output<String> createTime;

  /// Required. The datacenterConnector identifier.
  late final Output<String> datacenterConnectorId;

  /// Provides details on the state of the Datacenter Connector in case of an error.
  late final Output<StatusResponse30> error;
  late final Output<String> location;

  /// The connector's name.
  late final Output<String> name;
  late final Output<String> project;

  /// Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  late final Output<String> registrationId;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The service account to use in the connector when communicating with the cloud.
  late final Output<String> serviceAccount;
  late final Output<String> sourceId;

  /// State of the DatacenterConnector, as determined by the health checks.
  late final Output<String> state;

  /// The time the state was last set.
  late final Output<String> stateTime;

  /// The last time the connector was updated with an API call.
  late final Output<String> updateTime;

  /// The status of the current / last upgradeAppliance operation.
  late final Output<UpgradeStatusResponse> upgradeStatus;

  /// The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  late final Output<String> version;

  DatacenterConnector(
    String name, {
    DatacenterConnectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1:DatacenterConnector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applianceInfrastructureVersion = Output.createUnknown<String>();
    this.applianceSoftwareVersion = Output.createUnknown<String>();
    this.availableVersions = Output.createUnknown<AvailableUpdatesResponse>();
    this.bucket = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.datacenterConnectorId = Output.createUnknown<String>();
    this.error = Output.createUnknown<StatusResponse30>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.registrationId = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.serviceAccount = Output.createUnknown<String>();
    this.sourceId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.stateTime = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.upgradeStatus = Output.createUnknown<UpgradeStatusResponse>();
    this.version = Output.createUnknown<String>();
  }
}
