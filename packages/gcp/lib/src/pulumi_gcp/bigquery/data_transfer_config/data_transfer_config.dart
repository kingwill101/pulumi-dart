import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_transfer_config_email_preferences/data_transfer_config_email_preferences.dart';
import '../data_transfer_config_encryption_configuration/data_transfer_config_encryption_configuration.dart';
import '../data_transfer_config_schedule_options/data_transfer_config_schedule_options.dart';
import '../data_transfer_config_sensitive_params/data_transfer_config_sensitive_params.dart';
import 'data_transfer_config_args.dart';

/// Represents a data transfer configuration. A transfer configuration
/// contains all metadata needed to perform a data transfer.
///
///
/// To get more information about Config, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/datatransfer/rest/v1/projects.locations.transferConfigs/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/reference/datatransfer/rest/)
///
///
///
/// > **Note:**  All arguments marked as write-only values will not be stored in the state: `sensitive_params.secret_access_key_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Bigquerydatatransfer Config Scheduled Query
///
///
///
/// ### Bigquerydatatransfer Config Cmek
///
///
///
/// ### Bigquerydatatransfer Config Salesforce
///
///
///
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataTransferConfig:DataTransferConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataTransferConfig:DataTransferConfig default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataTransferConfig:DataTransferConfig default {{name}}
/// ```
class DataTransferConfig extends pulumi.CustomResource {
  /// The number of days to look back to automatically refresh the data.
  /// For example, if dataRefreshWindowDays = 10, then every day BigQuery
  /// reingests data for [today-10, today-1], rather than ingesting data for
  /// just [today-1]. Only valid if the data source supports the feature.
  /// Set the value to 0 to use the default value.
  late final pulumi.Output<int?> dataRefreshWindowDays;

  /// The data source id. Cannot be changed once the transfer config is created.
  late final pulumi.Output<String> dataSourceId;

  /// The BigQuery target dataset id.
  late final pulumi.Output<String?> destinationDatasetId;

  /// When set to true, no runs are scheduled for a given transfer.
  late final pulumi.Output<bool?> disabled;

  /// The user specified display name for the transfer config.
  late final pulumi.Output<String> displayName;

  /// Email notifications will be sent according to these preferences to the
  /// email address of the user who owns this transfer config.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigEmailPreferences?>
      emailPreferences;

  /// Represents the encryption configuration for a transfer.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigEncryptionConfiguration?>
      encryptionConfiguration;

  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  late final pulumi.Output<String?> location;

  /// The resource name of the transfer config. Transfer config names have the
  /// form projects/{projectId}/locations/{location}/transferConfigs/{configId}
  /// or projects/{projectId}/transferConfigs/{configId},
  /// where configId is usually a uuid, but this is not required.
  /// The name is ignored when creating a transfer config.
  late final pulumi.Output<String> name;

  /// Pub/Sub topic where notifications will be sent after transfer runs
  /// associated with this transfer config finish.
  late final pulumi.Output<String?> notificationPubsubTopic;

  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
  /// section for each data source. For example the parameters for Cloud Storage transfers are listed here:
  /// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  /// **NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) please force recreation of the resource.
  late final pulumi.Output<Map<String, String>> params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Data transfer schedule. If the data source does not support a custom
  /// schedule, this should be empty. If it is empty, the default value for
  /// the data source will be used. The specified times are in UTC. Examples
  /// of valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,
  /// jun 13:15, and first sunday of quarter 00:00. See more explanation
  /// about the format here:
  /// https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
  /// NOTE: The minimum interval time between recurring transfers depends
  /// on the data source; refer to the documentation for your data source.
  late final pulumi.Output<String?> schedule;

  /// Options customizing the data transfer schedule.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigScheduleOptions?> scheduleOptions;

  /// Different parameters are configured primarily using the the `params` field on this
  /// resource. This block contains the parameters which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key
  /// in the `params` map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  late final pulumi.Output<DataTransferConfigSensitiveParams?> sensitiveParams;

  /// Service account email. If this field is set, transfer config will
  /// be created with this service account credentials. It requires that
  /// requesting user calling this API has permissions to act as this service account.
  late final pulumi.Output<String?> serviceAccountName;

  DataTransferConfig(
    String name, {
    DataTransferConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataTransferConfig:DataTransferConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataRefreshWindowDays = registerOutput<int?>('dataRefreshWindowDays');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.destinationDatasetId = registerOutput<String?>('destinationDatasetId');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String>('displayName');
    this.emailPreferences =
        registerOutput<DataTransferConfigEmailPreferences?>('emailPreferences');
    this.encryptionConfiguration =
        registerOutput<DataTransferConfigEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.notificationPubsubTopic =
        registerOutput<String?>('notificationPubsubTopic');
    this.params = registerOutput<Map<String, String>>('params');
    this.project = registerOutput<String>('project');
    this.schedule = registerOutput<String?>('schedule');
    this.scheduleOptions =
        registerOutput<DataTransferConfigScheduleOptions?>('scheduleOptions');
    this.sensitiveParams =
        registerOutput<DataTransferConfigSensitiveParams?>('sensitiveParams');
    this.serviceAccountName = registerOutput<String?>('serviceAccountName');
  }
}
