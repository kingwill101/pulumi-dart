// ignore_for_file: unused_element, unnecessary_cast

import 'app_svc_container_settings_response.dart';
import 'app_svc_native_settings_response.dart';
import 'discovered_entity_light_summary_response.dart';
import 'entity_uptime_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWebAppAssessmentV2Operation.
class GetWebAppAssessmentV2OperationResult {
  /// Gets or sets user configurable app service container database settings.
  final AppSvcContainerSettingsResponse? appSvcContainerSettings;
  /// Gets or sets user configurable app service native settings.
  final AppSvcNativeSettingsResponse? appSvcNativeSettings;
  /// Assessment type of the assessment.
  final String? assessmentType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final String? azureLocation;
  /// Azure Offer Code.
  final String? azureOfferCode;
  /// Gets or sets a value indicating azure security offering type.
  final String? azureSecurityOfferingType;
  /// Confidence Rating in Percentage.
  final double? confidenceRatingInPercentage;
  /// Date and Time when assessment was created.
  final String createdTimestamp;
  /// Currency in which prices should be reported.
  final String? currency;
  /// Custom discount percentage.
  final double? discountPercentage;
  /// Gets or sets user configurable discovered entity settings.
  final DiscoveredEntityLightSummaryResponse? discoveredEntityLightSummary;
  /// Gets or sets the Enterprise agreement subscription id.
  final String? eaSubscriptionId;
  /// Gets or sets the duration for which the entity (Web app, VMs) are up in the
  /// on-premises environment.
  final EntityUptimeResponse? entityUptime;
  /// Gets or sets user configurable setting to display the environment type.
  final String? environmentType;
  /// Gets the group type for the assessment.
  final String? groupType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final String? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final String? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final String? perfDataStartTime;
  /// Last time when rates were queried.
  final String pricesTimestamp;
  /// The status of the last operation.
  final String provisioningState;
  /// Reserved instance.
  final String? reservedInstance;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final double? scalingFactor;
  /// Schema version.
  final String schemaVersion;
  /// Assessment sizing criterion.
  final String? sizingCriterion;
  /// User configurable setting to display the Stage of Assessment.
  final String stage;
  /// Whether assessment is in valid state and all machines have been assessed.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final String? timeRange;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Date and Time when assessment was last updated.
  final String updatedTimestamp;

  /// Creates a new [GetWebAppAssessmentV2OperationResult].
  /// [appSvcContainerSettings] Gets or sets user configurable app service container database settings.
  /// [appSvcNativeSettings] Gets or sets user configurable app service native settings.
  /// [assessmentType] Assessment type of the assessment.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureOfferCode] Azure Offer Code.
  /// [azureSecurityOfferingType] Gets or sets a value indicating azure security offering type.
  /// [confidenceRatingInPercentage] Confidence Rating in Percentage.
  /// [createdTimestamp] Date and Time when assessment was created.
  /// [currency] Currency in which prices should be reported.
  /// [discountPercentage] Custom discount percentage.
  /// [discoveredEntityLightSummary] Gets or sets user configurable discovered entity settings.
  /// [eaSubscriptionId] Gets or sets the Enterprise agreement subscription id.
  /// [entityUptime] Gets or sets the duration for which the entity (Web app, VMs) are up in the
  /// [environmentType] Gets or sets user configurable setting to display the environment type.
  /// [groupType] Gets the group type for the assessment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [pricesTimestamp] Last time when rates were queried.
  /// [provisioningState] The status of the last operation.
  /// [reservedInstance] Reserved instance.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [schemaVersion] Schema version.
  /// [sizingCriterion] Assessment sizing criterion.
  /// [stage] User configurable setting to display the Stage of Assessment.
  /// [status] Whether assessment is in valid state and all machines have been assessed.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Date and Time when assessment was last updated.
  GetWebAppAssessmentV2OperationResult({
    this.appSvcContainerSettings,
    this.appSvcNativeSettings,
    this.assessmentType,
    required this.azureApiVersion,
    this.azureLocation,
    this.azureOfferCode,
    this.azureSecurityOfferingType,
    this.confidenceRatingInPercentage,
    required this.createdTimestamp,
    this.currency,
    this.discountPercentage,
    this.discoveredEntityLightSummary,
    this.eaSubscriptionId,
    this.entityUptime,
    this.environmentType,
    this.groupType,
    required this.id,
    required this.name,
    this.percentile,
    this.perfDataEndTime,
    this.perfDataStartTime,
    required this.pricesTimestamp,
    required this.provisioningState,
    this.reservedInstance,
    this.scalingFactor,
    required this.schemaVersion,
    this.sizingCriterion,
    required this.stage,
    required this.status,
    required this.systemData,
    this.timeRange,
    required this.type,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSvcContainerSettings': ?appSvcContainerSettings == null ? null : appSvcContainerSettings!.toMap(),
      'appSvcNativeSettings': ?appSvcNativeSettings == null ? null : appSvcNativeSettings!.toMap(),
      'assessmentType': ?assessmentType,
      'azureApiVersion': azureApiVersion,
      'azureLocation': ?azureLocation,
      'azureOfferCode': ?azureOfferCode,
      'azureSecurityOfferingType': ?azureSecurityOfferingType,
      'confidenceRatingInPercentage': ?confidenceRatingInPercentage,
      'createdTimestamp': createdTimestamp,
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'discoveredEntityLightSummary': ?discoveredEntityLightSummary == null ? null : discoveredEntityLightSummary!.toMap(),
      'eaSubscriptionId': ?eaSubscriptionId,
      'entityUptime': ?entityUptime == null ? null : entityUptime!.toMap(),
      'environmentType': ?environmentType,
      'groupType': ?groupType,
      'id': id,
      'name': name,
      'percentile': ?percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'pricesTimestamp': pricesTimestamp,
      'provisioningState': provisioningState,
      'reservedInstance': ?reservedInstance,
      'scalingFactor': ?scalingFactor,
      'schemaVersion': schemaVersion,
      'sizingCriterion': ?sizingCriterion,
      'stage': stage,
      'status': status,
      'systemData': systemData.toMap(),
      'timeRange': ?timeRange,
      'type': type,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory GetWebAppAssessmentV2OperationResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppAssessmentV2OperationResult(
      appSvcContainerSettings: map['appSvcContainerSettings'] == null ? null : AppSvcContainerSettingsResponse.fromMap((map['appSvcContainerSettings']! as Map).cast<String, dynamic>()),
      appSvcNativeSettings: map['appSvcNativeSettings'] == null ? null : AppSvcNativeSettingsResponse.fromMap((map['appSvcNativeSettings']! as Map).cast<String, dynamic>()),
      assessmentType: map['assessmentType'] == null ? null : map['assessmentType']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      azureLocation: map['azureLocation'] == null ? null : map['azureLocation']! as String,
      azureOfferCode: map['azureOfferCode'] == null ? null : map['azureOfferCode']! as String,
      azureSecurityOfferingType: map['azureSecurityOfferingType'] == null ? null : map['azureSecurityOfferingType']! as String,
      confidenceRatingInPercentage: map['confidenceRatingInPercentage'] == null ? null : map['confidenceRatingInPercentage']! as double,
      createdTimestamp: map['createdTimestamp'] as String,
      currency: map['currency'] == null ? null : map['currency']! as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage']! as double,
      discoveredEntityLightSummary: map['discoveredEntityLightSummary'] == null ? null : DiscoveredEntityLightSummaryResponse.fromMap((map['discoveredEntityLightSummary']! as Map).cast<String, dynamic>()),
      eaSubscriptionId: map['eaSubscriptionId'] == null ? null : map['eaSubscriptionId']! as String,
      entityUptime: map['entityUptime'] == null ? null : EntityUptimeResponse.fromMap((map['entityUptime']! as Map).cast<String, dynamic>()),
      environmentType: map['environmentType'] == null ? null : map['environmentType']! as String,
      groupType: map['groupType'] == null ? null : map['groupType']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      percentile: map['percentile'] == null ? null : map['percentile']! as String,
      perfDataEndTime: map['perfDataEndTime'] == null ? null : map['perfDataEndTime']! as String,
      perfDataStartTime: map['perfDataStartTime'] == null ? null : map['perfDataStartTime']! as String,
      pricesTimestamp: map['pricesTimestamp'] as String,
      provisioningState: map['provisioningState'] as String,
      reservedInstance: map['reservedInstance'] == null ? null : map['reservedInstance']! as String,
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor']! as double,
      schemaVersion: map['schemaVersion'] as String,
      sizingCriterion: map['sizingCriterion'] == null ? null : map['sizingCriterion']! as String,
      stage: map['stage'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      timeRange: map['timeRange'] == null ? null : map['timeRange']! as String,
      type: map['type'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

