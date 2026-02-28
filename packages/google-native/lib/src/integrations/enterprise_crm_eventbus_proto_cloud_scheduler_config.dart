// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Scheduler Trigger configuration
class EnterpriseCrmEventbusProtoCloudSchedulerConfig {
  /// The cron tab of cloud scheduler trigger.
  final String cronTab;

  /// Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/List integrations
  final String? errorMessage;

  /// The location where associated cloud scheduler job will be created
  final String location;

  /// Service account used by Cloud Scheduler to trigger the integration at scheduled time
  final String serviceAccountEmail;

  /// Creates a new [EnterpriseCrmEventbusProtoCloudSchedulerConfig].
  /// [cronTab] The cron tab of cloud scheduler trigger.
  /// [errorMessage] Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/List integrations
  /// [location] The location where associated cloud scheduler job will be created
  /// [serviceAccountEmail] Service account used by Cloud Scheduler to trigger the integration at scheduled time
  EnterpriseCrmEventbusProtoCloudSchedulerConfig({
    required this.cronTab,
    this.errorMessage,
    required this.location,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cronTab'] = cronTab;
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    map['location'] = location;
    map['serviceAccountEmail'] = serviceAccountEmail;
    return map;
  }

  factory EnterpriseCrmEventbusProtoCloudSchedulerConfig.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCloudSchedulerConfig(
      cronTab: map['cronTab'] as String,
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
      location: map['location'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
