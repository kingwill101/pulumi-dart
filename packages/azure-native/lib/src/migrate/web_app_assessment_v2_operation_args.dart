// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_svc_container_settings.dart';
import 'app_svc_native_settings.dart';
import 'discovered_entity_light_summary.dart';
import 'entity_uptime.dart';

/// {@template pulumi_migrate_web_app_assessment_v2_operation_args_doc}
/// The set of arguments for WebAppAssessmentV2Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_web_app_assessment_v2_operation_args_doc}
class WebAppAssessmentV2OperationArgs {
  /// Gets or sets user configurable app service container database settings.
  final pulumi.Input<AppSvcContainerSettings>? appSvcContainerSettings;
  /// Gets or sets user configurable app service native settings.
  final pulumi.Input<AppSvcNativeSettings>? appSvcNativeSettings;
  /// Web app Assessment arm name.
  final pulumi.Input<String>? assessmentName;
  /// Assessment type of the assessment.
  final pulumi.Input<String>? assessmentType;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String>? azureLocation;
  /// Azure Offer Code.
  final pulumi.Input<String>? azureOfferCode;
  /// Gets or sets a value indicating azure security offering type.
  final pulumi.Input<String>? azureSecurityOfferingType;
  /// Confidence Rating in Percentage.
  final pulumi.Input<double>? confidenceRatingInPercentage;
  /// Currency in which prices should be reported.
  final pulumi.Input<String>? currency;
  /// Custom discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// Gets or sets user configurable discovered entity settings.
  final pulumi.Input<DiscoveredEntityLightSummary>? discoveredEntityLightSummary;
  /// Gets or sets the Enterprise agreement subscription id.
  final pulumi.Input<String>? eaSubscriptionId;
  /// Gets or sets the duration for which the entity (Web app, VMs) are up in the
  /// on-premises environment.
  final pulumi.Input<EntityUptime>? entityUptime;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<String>? environmentType;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Gets the group type for the assessment.
  final pulumi.Input<String>? groupType;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final pulumi.Input<String>? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final pulumi.Input<String>? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final pulumi.Input<String>? perfDataStartTime;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// Reserved instance.
  final pulumi.Input<String>? reservedInstance;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String>? sizingCriterion;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final pulumi.Input<String>? timeRange;

  /// Creates a new [WebAppAssessmentV2OperationArgs].
  /// [appSvcContainerSettings] Gets or sets user configurable app service container database settings.
  /// [appSvcNativeSettings] Gets or sets user configurable app service native settings.
  /// [assessmentName] Web app Assessment arm name.
  /// [assessmentType] Assessment type of the assessment.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureOfferCode] Azure Offer Code.
  /// [azureSecurityOfferingType] Gets or sets a value indicating azure security offering type.
  /// [confidenceRatingInPercentage] Confidence Rating in Percentage.
  /// [currency] Currency in which prices should be reported.
  /// [discountPercentage] Custom discount percentage.
  /// [discoveredEntityLightSummary] Gets or sets user configurable discovered entity settings.
  /// [eaSubscriptionId] Gets or sets the Enterprise agreement subscription id.
  /// [entityUptime] Gets or sets the duration for which the entity (Web app, VMs) are up in the
  /// [environmentType] Gets or sets user configurable setting to display the environment type.
  /// [groupName] Group ARM name
  /// [groupType] Gets the group type for the assessment.
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [projectName] Assessment Project Name
  /// [reservedInstance] Reserved instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [sizingCriterion] Assessment sizing criterion.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  WebAppAssessmentV2OperationArgs({
    AppSvcContainerSettings? appSvcContainerSettings,
    AppSvcNativeSettings? appSvcNativeSettings,
    String? assessmentName,
    String? assessmentType,
    String? azureLocation,
    String? azureOfferCode,
    String? azureSecurityOfferingType,
    double? confidenceRatingInPercentage,
    String? currency,
    double? discountPercentage,
    DiscoveredEntityLightSummary? discoveredEntityLightSummary,
    String? eaSubscriptionId,
    EntityUptime? entityUptime,
    String? environmentType,
    required String groupName,
    String? groupType,
    String? percentile,
    String? perfDataEndTime,
    String? perfDataStartTime,
    required String projectName,
    String? reservedInstance,
    required String resourceGroupName,
    double? scalingFactor,
    String? sizingCriterion,
    String? timeRange,
  }) :
      appSvcContainerSettings = pulumi.Input.asOptionalInput<AppSvcContainerSettings>(appSvcContainerSettings),
      appSvcNativeSettings = pulumi.Input.asOptionalInput<AppSvcNativeSettings>(appSvcNativeSettings),
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      assessmentType = pulumi.Input.asOptionalInput<String>(assessmentType),
      azureLocation = pulumi.Input.asOptionalInput<String>(azureLocation),
      azureOfferCode = pulumi.Input.asOptionalInput<String>(azureOfferCode),
      azureSecurityOfferingType = pulumi.Input.asOptionalInput<String>(azureSecurityOfferingType),
      confidenceRatingInPercentage = pulumi.Input.asOptionalInput<double>(confidenceRatingInPercentage),
      currency = pulumi.Input.asOptionalInput<String>(currency),
      discountPercentage = pulumi.Input.asOptionalInput<double>(discountPercentage),
      discoveredEntityLightSummary = pulumi.Input.asOptionalInput<DiscoveredEntityLightSummary>(discoveredEntityLightSummary),
      eaSubscriptionId = pulumi.Input.asOptionalInput<String>(eaSubscriptionId),
      entityUptime = pulumi.Input.asOptionalInput<EntityUptime>(entityUptime),
      environmentType = pulumi.Input.asOptionalInput<String>(environmentType),
      groupName = pulumi.Input.asInput<String>(groupName),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      percentile = pulumi.Input.asOptionalInput<String>(percentile),
      perfDataEndTime = pulumi.Input.asOptionalInput<String>(perfDataEndTime),
      perfDataStartTime = pulumi.Input.asOptionalInput<String>(perfDataStartTime),
      projectName = pulumi.Input.asInput<String>(projectName),
      reservedInstance = pulumi.Input.asOptionalInput<String>(reservedInstance),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scalingFactor = pulumi.Input.asOptionalInput<double>(scalingFactor),
      sizingCriterion = pulumi.Input.asOptionalInput<String>(sizingCriterion),
      timeRange = pulumi.Input.asOptionalInput<String>(timeRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSvcContainerSettings': ?pulumi.Input.mapOptionalInputValue<AppSvcContainerSettings, Map<String, dynamic>>(appSvcContainerSettings, (value) => value.toMap()),
      'appSvcNativeSettings': ?pulumi.Input.mapOptionalInputValue<AppSvcNativeSettings, Map<String, dynamic>>(appSvcNativeSettings, (value) => value.toMap()),
      'assessmentName': ?assessmentName,
      'assessmentType': ?assessmentType,
      'azureLocation': ?azureLocation,
      'azureOfferCode': ?azureOfferCode,
      'azureSecurityOfferingType': ?azureSecurityOfferingType,
      'confidenceRatingInPercentage': ?confidenceRatingInPercentage,
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'discoveredEntityLightSummary': ?pulumi.Input.mapOptionalInputValue<DiscoveredEntityLightSummary, Map<String, dynamic>>(discoveredEntityLightSummary, (value) => value.toMap()),
      'eaSubscriptionId': ?eaSubscriptionId,
      'entityUptime': ?pulumi.Input.mapOptionalInputValue<EntityUptime, Map<String, dynamic>>(entityUptime, (value) => value.toMap()),
      'environmentType': ?environmentType,
      'groupName': groupName,
      'groupType': ?groupType,
      'percentile': ?percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'projectName': projectName,
      'reservedInstance': ?reservedInstance,
      'resourceGroupName': resourceGroupName,
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'timeRange': ?timeRange,
    };
  }

  factory WebAppAssessmentV2OperationArgs.fromMap(Map<String, dynamic> map) {
    return WebAppAssessmentV2OperationArgs(
      appSvcContainerSettings: map['appSvcContainerSettings'] == null ? null : AppSvcContainerSettings.fromMap((map['appSvcContainerSettings'] as Map).cast<String, dynamic>()),
      appSvcNativeSettings: map['appSvcNativeSettings'] == null ? null : AppSvcNativeSettings.fromMap((map['appSvcNativeSettings'] as Map).cast<String, dynamic>()),
      assessmentName: map['assessmentName'] == null ? null : map['assessmentName'] as String,
      assessmentType: map['assessmentType'] == null ? null : map['assessmentType'] as String,
      azureLocation: map['azureLocation'] == null ? null : map['azureLocation'] as String,
      azureOfferCode: map['azureOfferCode'] == null ? null : map['azureOfferCode'] as String,
      azureSecurityOfferingType: map['azureSecurityOfferingType'] == null ? null : map['azureSecurityOfferingType'] as String,
      confidenceRatingInPercentage: map['confidenceRatingInPercentage'] == null ? null : map['confidenceRatingInPercentage'] as double,
      currency: map['currency'] == null ? null : map['currency'] as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      discoveredEntityLightSummary: map['discoveredEntityLightSummary'] == null ? null : DiscoveredEntityLightSummary.fromMap((map['discoveredEntityLightSummary'] as Map).cast<String, dynamic>()),
      eaSubscriptionId: map['eaSubscriptionId'] == null ? null : map['eaSubscriptionId'] as String,
      entityUptime: map['entityUptime'] == null ? null : EntityUptime.fromMap((map['entityUptime'] as Map).cast<String, dynamic>()),
      environmentType: map['environmentType'] == null ? null : map['environmentType'] as String,
      groupName: map['groupName'] as String,
      groupType: map['groupType'] == null ? null : map['groupType'] as String,
      percentile: map['percentile'] == null ? null : map['percentile'] as String,
      perfDataEndTime: map['perfDataEndTime'] == null ? null : map['perfDataEndTime'] as String,
      perfDataStartTime: map['perfDataStartTime'] == null ? null : map['perfDataStartTime'] as String,
      projectName: map['projectName'] as String,
      reservedInstance: map['reservedInstance'] == null ? null : map['reservedInstance'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
      sizingCriterion: map['sizingCriterion'] == null ? null : map['sizingCriterion'] as String,
      timeRange: map['timeRange'] == null ? null : map['timeRange'] as String,
    );
  }
}

