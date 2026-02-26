// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_transfer_config_email_preferences/data_transfer_config_email_preferences.dart';
import '../data_transfer_config_encryption_configuration/data_transfer_config_encryption_configuration.dart';
import '../data_transfer_config_schedule_options/data_transfer_config_schedule_options.dart';
import '../data_transfer_config_sensitive_params/data_transfer_config_sensitive_params.dart';

/// The set of arguments for DataTransferConfig.
class DataTransferConfigArgs {
  /// The number of days to look back to automatically refresh the data.
  /// For example, if dataRefreshWindowDays = 10, then every day BigQuery
  /// reingests data for [today-10, today-1], rather than ingesting data for
  /// just [today-1]. Only valid if the data source supports the feature.
  /// Set the value to 0 to use the default value.
  final Input<int>? dataRefreshWindowDays;

  /// The data source id. Cannot be changed once the transfer config is created.
  final Input<String> dataSourceId;

  /// The BigQuery target dataset id.
  final Input<String>? destinationDatasetId;

  /// When set to true, no runs are scheduled for a given transfer.
  final Input<bool>? disabled;

  /// The user specified display name for the transfer config.
  final Input<String> displayName;

  /// Email notifications will be sent according to these preferences to the
  /// email address of the user who owns this transfer config.
  /// Structure is documented below.
  final Input<DataTransferConfigEmailPreferences>? emailPreferences;

  /// Represents the encryption configuration for a transfer.
  /// Structure is documented below.
  final Input<DataTransferConfigEncryptionConfiguration>?
      encryptionConfiguration;

  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  final Input<String>? location;

  /// Pub/Sub topic where notifications will be sent after transfer runs
  /// associated with this transfer config finish.
  final Input<String>? notificationPubsubTopic;

  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
  /// section for each data source. For example the parameters for Cloud Storage transfers are listed here:
  /// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  /// **NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) please force recreation of the resource.
  final Input<Map<String, String>> params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Data transfer schedule. If the data source does not support a custom
  /// schedule, this should be empty. If it is empty, the default value for
  /// the data source will be used. The specified times are in UTC. Examples
  /// of valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,
  /// jun 13:15, and first sunday of quarter 00:00. See more explanation
  /// about the format here:
  /// https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
  /// NOTE: The minimum interval time between recurring transfers depends
  /// on the data source; refer to the documentation for your data source.
  final Input<String>? schedule;

  /// Options customizing the data transfer schedule.
  /// Structure is documented below.
  final Input<DataTransferConfigScheduleOptions>? scheduleOptions;

  /// Different parameters are configured primarily using the the <span pulumi-lang-nodejs="`params`" pulumi-lang-dotnet="`Params`" pulumi-lang-go="`params`" pulumi-lang-python="`params`" pulumi-lang-yaml="`params`" pulumi-lang-java="`params`">`params`</span> field on this
  /// resource. This block contains the parameters which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key
  /// in the <span pulumi-lang-nodejs="`params`" pulumi-lang-dotnet="`Params`" pulumi-lang-go="`params`" pulumi-lang-python="`params`" pulumi-lang-yaml="`params`" pulumi-lang-java="`params`">`params`</span> map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  final Input<DataTransferConfigSensitiveParams>? sensitiveParams;

  /// Service account email. If this field is set, transfer config will
  /// be created with this service account credentials. It requires that
  /// requesting user calling this API has permissions to act as this service account.
  final Input<String>? serviceAccountName;

  DataTransferConfigArgs({
    this.dataRefreshWindowDays,
    required this.dataSourceId,
    this.destinationDatasetId,
    this.disabled,
    required this.displayName,
    this.emailPreferences,
    this.encryptionConfiguration,
    this.location,
    this.notificationPubsubTopic,
    required this.params,
    this.project,
    this.schedule,
    this.scheduleOptions,
    this.sensitiveParams,
    this.serviceAccountName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataRefreshWindowDaysValue = dataRefreshWindowDays;
    if (dataRefreshWindowDaysValue != null) {
      map['dataRefreshWindowDays'] = dataRefreshWindowDaysValue;
    }
    map['dataSourceId'] = dataSourceId;
    final destinationDatasetIdValue = destinationDatasetId;
    if (destinationDatasetIdValue != null) {
      map['destinationDatasetId'] = destinationDatasetIdValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['displayName'] = displayName;
    final emailPreferencesValue = emailPreferences;
    if (emailPreferencesValue != null) {
      map['emailPreferences'] = Input.mapOptionalInputValue<
              DataTransferConfigEmailPreferences, Map<String, dynamic>>(
          emailPreferencesValue, (value) => value.toMap());
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = Input.mapOptionalInputValue<
              DataTransferConfigEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final notificationPubsubTopicValue = notificationPubsubTopic;
    if (notificationPubsubTopicValue != null) {
      map['notificationPubsubTopic'] = notificationPubsubTopicValue;
    }
    map['params'] = params;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final scheduleOptionsValue = scheduleOptions;
    if (scheduleOptionsValue != null) {
      map['scheduleOptions'] = Input.mapOptionalInputValue<
          DataTransferConfigScheduleOptions,
          Map<String, dynamic>>(scheduleOptionsValue, (value) => value.toMap());
    }
    final sensitiveParamsValue = sensitiveParams;
    if (sensitiveParamsValue != null) {
      map['sensitiveParams'] = Input.mapOptionalInputValue<
          DataTransferConfigSensitiveParams,
          Map<String, dynamic>>(sensitiveParamsValue, (value) => value.toMap());
    }
    final serviceAccountNameValue = serviceAccountName;
    if (serviceAccountNameValue != null) {
      map['serviceAccountName'] = serviceAccountNameValue;
    }
    return map;
  }

  factory DataTransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigArgs(
      dataRefreshWindowDays:
          Input.asOptionalInput<int>(map['dataRefreshWindowDays']),
      dataSourceId: Input.asInput<String>(map['dataSourceId']),
      destinationDatasetId:
          Input.asOptionalInput<String>(map['destinationDatasetId']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      displayName: Input.asInput<String>(map['displayName']),
      emailPreferences:
          Input.asOptionalInput<DataTransferConfigEmailPreferences>(
              map['emailPreferences']),
      encryptionConfiguration:
          Input.asOptionalInput<DataTransferConfigEncryptionConfiguration>(
              map['encryptionConfiguration']),
      location: Input.asOptionalInput<String>(map['location']),
      notificationPubsubTopic:
          Input.asOptionalInput<String>(map['notificationPubsubTopic']),
      params: Input.asInput<Map<String, String>>(map['params']),
      project: Input.asOptionalInput<String>(map['project']),
      schedule: Input.asOptionalInput<String>(map['schedule']),
      scheduleOptions: Input.asOptionalInput<DataTransferConfigScheduleOptions>(
          map['scheduleOptions']),
      sensitiveParams: Input.asOptionalInput<DataTransferConfigSensitiveParams>(
          map['sensitiveParams']),
      serviceAccountName:
          Input.asOptionalInput<String>(map['serviceAccountName']),
    );
  }
}
