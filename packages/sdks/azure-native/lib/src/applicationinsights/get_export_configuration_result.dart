// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExportConfiguration.
class GetExportConfigurationResult {
  /// The name of the Application Insights component.
  final String applicationName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The name of the destination storage container.
  final String containerName;
  /// The name of destination account.
  final String destinationAccountId;
  /// The destination account location ID.
  final String destinationStorageLocationId;
  /// The destination storage account subscription ID.
  final String destinationStorageSubscriptionId;
  /// The destination type.
  final String destinationType;
  /// The unique ID of the export configuration inside an Application Insights component. It is auto generated when the Continuous Export configuration is created.
  final String exportId;
  /// This indicates current Continuous Export configuration status. The possible values are 'Preparing', 'Success', 'Failure'.
  final String exportStatus;
  /// The instrumentation key of the Application Insights component.
  final String instrumentationKey;
  /// This will be 'true' if the Continuous Export configuration is enabled, otherwise it will be 'false'.
  final String isUserEnabled;
  /// The last time the Continuous Export configuration started failing.
  final String lastGapTime;
  /// The last time data was successfully delivered to the destination storage container for this Continuous Export configuration.
  final String lastSuccessTime;
  /// Last time the Continuous Export configuration was updated.
  final String lastUserUpdate;
  /// Deprecated
  final String? notificationQueueEnabled;
  /// This is the reason the Continuous Export configuration started failing. It can be 'AzureStorageNotFound' or 'AzureStorageAccessDenied'.
  final String permanentErrorReason;
  /// This comma separated list of document types that will be exported. The possible values include 'Requests', 'Event', 'Exceptions', 'Metrics', 'PageViews', 'PageViewPerformance', 'Rdd', 'PerformanceCounters', 'Availability', 'Messages'.
  final String? recordTypes;
  /// The resource group of the Application Insights component.
  final String resourceGroup;
  /// The name of the destination storage account.
  final String storageName;
  /// The subscription of the Application Insights component.
  final String subscriptionId;

  /// Creates a new [GetExportConfigurationResult].
  /// [applicationName] The name of the Application Insights component.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerName] The name of the destination storage container.
  /// [destinationAccountId] The name of destination account.
  /// [destinationStorageLocationId] The destination account location ID.
  /// [destinationStorageSubscriptionId] The destination storage account subscription ID.
  /// [destinationType] The destination type.
  /// [exportId] The unique ID of the export configuration inside an Application Insights component. It is auto generated when the Continuous Export configuration is created.
  /// [exportStatus] This indicates current Continuous Export configuration status. The possible values are 'Preparing', 'Success', 'Failure'.
  /// [instrumentationKey] The instrumentation key of the Application Insights component.
  /// [isUserEnabled] This will be 'true' if the Continuous Export configuration is enabled, otherwise it will be 'false'.
  /// [lastGapTime] The last time the Continuous Export configuration started failing.
  /// [lastSuccessTime] The last time data was successfully delivered to the destination storage container for this Continuous Export configuration.
  /// [lastUserUpdate] Last time the Continuous Export configuration was updated.
  /// [notificationQueueEnabled] Deprecated
  /// [permanentErrorReason] This is the reason the Continuous Export configuration started failing. It can be 'AzureStorageNotFound' or 'AzureStorageAccessDenied'.
  /// [recordTypes] This comma separated list of document types that will be exported. The possible values include 'Requests', 'Event', 'Exceptions', 'Metrics', 'PageViews', 'PageViewPerformance', 'Rdd', 'PerformanceCounters', 'Availability', 'Messages'.
  /// [resourceGroup] The resource group of the Application Insights component.
  /// [storageName] The name of the destination storage account.
  /// [subscriptionId] The subscription of the Application Insights component.
  GetExportConfigurationResult({
    required this.applicationName,
    required this.azureApiVersion,
    required this.containerName,
    required this.destinationAccountId,
    required this.destinationStorageLocationId,
    required this.destinationStorageSubscriptionId,
    required this.destinationType,
    required this.exportId,
    required this.exportStatus,
    required this.instrumentationKey,
    required this.isUserEnabled,
    required this.lastGapTime,
    required this.lastSuccessTime,
    required this.lastUserUpdate,
    this.notificationQueueEnabled,
    required this.permanentErrorReason,
    this.recordTypes,
    required this.resourceGroup,
    required this.storageName,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'azureApiVersion': azureApiVersion,
      'containerName': containerName,
      'destinationAccountId': destinationAccountId,
      'destinationStorageLocationId': destinationStorageLocationId,
      'destinationStorageSubscriptionId': destinationStorageSubscriptionId,
      'destinationType': destinationType,
      'exportId': exportId,
      'exportStatus': exportStatus,
      'instrumentationKey': instrumentationKey,
      'isUserEnabled': isUserEnabled,
      'lastGapTime': lastGapTime,
      'lastSuccessTime': lastSuccessTime,
      'lastUserUpdate': lastUserUpdate,
      'notificationQueueEnabled': ?notificationQueueEnabled,
      'permanentErrorReason': permanentErrorReason,
      'recordTypes': ?recordTypes,
      'resourceGroup': resourceGroup,
      'storageName': storageName,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetExportConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetExportConfigurationResult(
      applicationName: map['applicationName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      containerName: map['containerName'] as String,
      destinationAccountId: map['destinationAccountId'] as String,
      destinationStorageLocationId: map['destinationStorageLocationId'] as String,
      destinationStorageSubscriptionId: map['destinationStorageSubscriptionId'] as String,
      destinationType: map['destinationType'] as String,
      exportId: map['exportId'] as String,
      exportStatus: map['exportStatus'] as String,
      instrumentationKey: map['instrumentationKey'] as String,
      isUserEnabled: map['isUserEnabled'] as String,
      lastGapTime: map['lastGapTime'] as String,
      lastSuccessTime: map['lastSuccessTime'] as String,
      lastUserUpdate: map['lastUserUpdate'] as String,
      notificationQueueEnabled: map['notificationQueueEnabled'] == null ? null : map['notificationQueueEnabled'] as String,
      permanentErrorReason: map['permanentErrorReason'] as String,
      recordTypes: map['recordTypes'] == null ? null : map['recordTypes'] as String,
      resourceGroup: map['resourceGroup'] as String,
      storageName: map['storageName'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

