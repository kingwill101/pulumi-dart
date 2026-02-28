// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Scheduler Trigger configuration
class GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse {
  /// The cron tab of cloud scheduler trigger.
  final String cronTab;

  /// Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/List integrations
  final String errorMessage;

  /// The location where associated cloud scheduler job will be created
  final String location;

  /// Service account used by Cloud Scheduler to trigger the integration at scheduled time
  final String serviceAccountEmail;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse].
  /// [cronTab] The cron tab of cloud scheduler trigger.
  /// [errorMessage] Optional. When the job was deleted from Pantheon UI, error_message will be populated when Get/List integrations
  /// [location] The location where associated cloud scheduler job will be created
  /// [serviceAccountEmail] Service account used by Cloud Scheduler to trigger the integration at scheduled time
  GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse({
    required this.cronTab,
    required this.errorMessage,
    required this.location,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cronTab'] = cronTab;
    map['errorMessage'] = errorMessage;
    map['location'] = location;
    map['serviceAccountEmail'] = serviceAccountEmail;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse(
      cronTab: map['cronTab'] as String,
      errorMessage: map['errorMessage'] as String,
      location: map['location'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
