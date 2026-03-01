import 'package:pulumi/pulumi.dart' as pulumi;
import 'available_updates_response_vmmigration_v1alpha1.dart';
import 'datacenter_connector_vmmigration_v1alpha1_args.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'upgrade_status_response_vmmigration_v1alpha1.dart';

/// Creates a new DatacenterConnector in a given Source.
/// Auto-naming is currently not supported for this resource.
class DatacenterConnectorVmmigrationV1alpha1 extends pulumi.CustomResource {
  /// Appliance OVA version. This is the OVA which is manually installed by the user and contains the infrastructure for the automatically updatable components on the appliance.
  late final pulumi.Output<String> applianceInfrastructureVersion;

  /// Appliance last installed update bundle version. This is the version of the automatically updatable components on the appliance.
  late final pulumi.Output<String> applianceSoftwareVersion;

  /// The available versions for updating this appliance.
  late final pulumi.Output<AvailableUpdatesResponseVmmigrationV1alpha1>
  availableVersions;

  /// The communication channel between the datacenter connector and Google Cloud.
  late final pulumi.Output<String> bucket;

  /// The time the connector was created (as an API call, not when it was actually installed).
  late final pulumi.Output<String> createTime;

  /// Required. The datacenterConnector identifier.
  late final pulumi.Output<String> datacenterConnectorId;

  /// Provides details on the state of the Datacenter Connector in case of an error.
  late final pulumi.Output<StatusResponseVmmigrationV1alpha1> error;
  late final pulumi.Output<String> location;

  /// The connector's name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  late final pulumi.Output<String> registrationId;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The service account to use in the connector when communicating with the cloud.
  late final pulumi.Output<String> serviceAccount;
  late final pulumi.Output<String> sourceId;

  /// State of the DatacenterConnector, as determined by the health checks.
  late final pulumi.Output<String> state;

  /// The time the state was last set.
  late final pulumi.Output<String> stateTime;

  /// The last time the connector was updated with an API call.
  late final pulumi.Output<String> updateTime;

  /// The status of the current / last upgradeAppliance operation.
  late final pulumi.Output<UpgradeStatusResponseVmmigrationV1alpha1>
  upgradeStatus;

  /// The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  late final pulumi.Output<String> version;

  /// Creates a new [DatacenterConnectorVmmigrationV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatacenterConnectorVmmigrationV1alpha1]. {@macro pulumi_vmmigration_v1alpha1_datacenter_connector_vmmigration_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatacenterConnectorVmmigrationV1alpha1(
    String name, {
    DatacenterConnectorVmmigrationV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:vmmigration/v1alpha1:DatacenterConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.applianceInfrastructureVersion = registerOutput<String>(
      'applianceInfrastructureVersion',
    );
    this.applianceSoftwareVersion = registerOutput<String>(
      'applianceSoftwareVersion',
    );
    this.availableVersions =
        registerOutput<AvailableUpdatesResponseVmmigrationV1alpha1>(
          'availableVersions',
        );
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.datacenterConnectorId = registerOutput<String>(
      'datacenterConnectorId',
    );
    this.error = registerOutput<StatusResponseVmmigrationV1alpha1>('error');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.registrationId = registerOutput<String>('registrationId');
    this.requestId = registerOutput<String?>('requestId');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.sourceId = registerOutput<String>('sourceId');
    this.state = registerOutput<String>('state');
    this.stateTime = registerOutput<String>('stateTime');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradeStatus =
        registerOutput<UpgradeStatusResponseVmmigrationV1alpha1>(
          'upgradeStatus',
        );
    this.version = registerOutput<String>('version');
  }
}
