import 'package:pulumi/pulumi.dart' as pulumi;
import '../metastore_service_encryption_config/metastore_service_encryption_config.dart';
import '../metastore_service_hive_metastore_config/metastore_service_hive_metastore_config.dart';
import '../metastore_service_maintenance_window/metastore_service_maintenance_window.dart';
import '../metastore_service_metadata_integration/metastore_service_metadata_integration.dart';
import '../metastore_service_network_config/metastore_service_network_config.dart';
import '../metastore_service_scaling_config/metastore_service_scaling_config.dart';
import '../metastore_service_scheduled_backup/metastore_service_scheduled_backup.dart';
import '../metastore_service_telemetry_config/metastore_service_telemetry_config.dart';
import 'metastore_service_args.dart';

/// A managed metastore service that serves metadata queries.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-metastore/docs/reference/rest/v1/projects.locations.services)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataproc-metastore/docs/overview)
///
/// ## Example Usage
///
/// ### Dataproc Metastore Service Basic
///
///
///
/// ### Dataproc Metastore Service Deletion Protection
///
///
///
/// ### Dataproc Metastore Service Cmek Example
///
///
///
/// ### Dataproc Metastore Service Private Service Connect
///
///
///
/// ### Dataproc Metastore Service Private Service Connect Custom Routes
///
///
///
/// ### Dataproc Metastore Service Dpms2
///
///
///
/// ### Dataproc Metastore Service Dpms2 Scaling Factor
///
///
///
/// ### Dataproc Metastore Service Scheduled Backup
///
///
///
/// ### Dataproc Metastore Service Autoscaling Max Scaling Factor
///
///
///
/// ### Dataproc Metastore Service Autoscaling Min And Max Scaling Factor
///
///
///
/// ### Dataproc Metastore Service Autoscaling Min Scaling Factor
///
///
///
/// ### Dataproc Metastore Service Autoscaling No Limit Config
///
///
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/services/{{service_id}}`
///
/// * `{{project}}/{{location}}/{{service_id}}`
///
/// * `{{location}}/{{service_id}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreService:MetastoreService default projects/{{project}}/locations/{{location}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreService:MetastoreService default {{project}}/{{location}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreService:MetastoreService default {{location}}/{{service_id}}
/// ```
class MetastoreService extends pulumi.CustomResource {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  late final pulumi.Output<String> artifactGcsUri;

  /// Output only. The time when the metastore service was created.
  late final pulumi.Output<String> createTime;

  /// The database type that the Metastore service stores its data.
  /// Default value is `MYSQL`.
  /// Possible values are: `MYSQL`, `SPANNER`.
  late final pulumi.Output<String?> databaseType;

  /// Indicates if the dataproc metastore should be protected against accidental deletions.
  late final pulumi.Output<bool?> deletionProtection;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Information used to configure the Dataproc Metastore service to encrypt
  /// customer data at rest.
  /// Structure is documented below.
  late final pulumi.Output<MetastoreServiceEncryptionConfig?> encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  late final pulumi.Output<String> endpointUri;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  /// Structure is documented below.
  late final pulumi.Output<MetastoreServiceHiveMetastoreConfig?>
      hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the metastore service should reside.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// The one hour maintenance window of the metastore service.
  /// This specifies when the service can be restarted for maintenance purposes in UTC time.
  /// Maintenance window is not needed for services with the `SPANNER` database type.
  /// Structure is documented below.
  late final pulumi.Output<MetastoreServiceMaintenanceWindow?>
      maintenanceWindow;

  /// The setting that defines how metastore metadata should be integrated with external services and systems.
  /// Structure is documented below.
  late final pulumi.Output<MetastoreServiceMetadataIntegration?>
      metadataIntegration;

  /// The relative resource name of the metastore service.
  late final pulumi.Output<String> name;

  /// The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:
  /// "projects/{projectNumber}/global/networks/{network_id}".
  late final pulumi.Output<String> network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  /// Structure is documented below.
  late final pulumi.Output<MetastoreServiceNetworkConfig?> networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The release channel of the service. If unspecified, defaults to `STABLE`.
  /// Default value is `STABLE`.
  /// Possible values are: `CANARY`, `STABLE`.
  late final pulumi.Output<String?> releaseChannel;

  /// Represents the scaling configuration of a metastore service.
  /// Structure is documented below.
  late final pulumi.Output<MetastoreServiceScalingConfig?> scalingConfig;

  /// The configuration of scheduled backup for the metastore service.
  /// Structure is documented below.
  late final pulumi.Output<MetastoreServiceScheduledBackup?> scheduledBackup;

  /// The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  late final pulumi.Output<String> serviceId;

  /// The current state of the metastore service.
  late final pulumi.Output<String> state;

  /// Additional information about the current state of the metastore service, if available.
  late final pulumi.Output<String> stateMessage;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// Structure is documented below.
  late final pulumi.Output<MetastoreServiceTelemetryConfig> telemetryConfig;

  /// The tier of the service.
  /// Possible values are: `DEVELOPER`, `ENTERPRISE`.
  late final pulumi.Output<String> tier;

  /// The globally unique resource identifier of the metastore service.
  late final pulumi.Output<String> uid;

  /// Output only. The time when the metastore service was last updated.
  late final pulumi.Output<String> updateTime;

  MetastoreService(
    String name, {
    MetastoreServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreService:MetastoreService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.artifactGcsUri = registerOutput<String>('artifactGcsUri');
    this.createTime = registerOutput<String>('createTime');
    this.databaseType = registerOutput<String?>('databaseType');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionConfig =
        registerOutput<MetastoreServiceEncryptionConfig?>('encryptionConfig');
    this.endpointUri = registerOutput<String>('endpointUri');
    this.hiveMetastoreConfig =
        registerOutput<MetastoreServiceHiveMetastoreConfig?>(
            'hiveMetastoreConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.maintenanceWindow =
        registerOutput<MetastoreServiceMaintenanceWindow?>('maintenanceWindow');
    this.metadataIntegration =
        registerOutput<MetastoreServiceMetadataIntegration?>(
            'metadataIntegration');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkConfig =
        registerOutput<MetastoreServiceNetworkConfig?>('networkConfig');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.releaseChannel = registerOutput<String?>('releaseChannel');
    this.scalingConfig =
        registerOutput<MetastoreServiceScalingConfig?>('scalingConfig');
    this.scheduledBackup =
        registerOutput<MetastoreServiceScheduledBackup?>('scheduledBackup');
    this.serviceId = registerOutput<String>('serviceId');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.telemetryConfig =
        registerOutput<MetastoreServiceTelemetryConfig>('telemetryConfig');
    this.tier = registerOutput<String>('tier');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
