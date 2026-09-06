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
  final pulumi.Input<AppSvcContainerSettings?>? appSvcContainerSettings;
  /// Gets or sets user configurable app service native settings.
  final pulumi.Input<AppSvcNativeSettings?>? appSvcNativeSettings;
  /// Web app Assessment arm name.
  final pulumi.Input<String?>? assessmentName;
  /// Assessment type of the assessment.
  final pulumi.Input<dynamic>? assessmentType;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String?>? azureLocation;
  /// Azure Offer Code.
  final pulumi.Input<dynamic>? azureOfferCode;
  /// Gets or sets a value indicating azure security offering type.
  final pulumi.Input<dynamic>? azureSecurityOfferingType;
  /// Confidence Rating in Percentage.
  final pulumi.Input<double?>? confidenceRatingInPercentage;
  /// Currency in which prices should be reported.
  final pulumi.Input<dynamic>? currency;
  /// Custom discount percentage.
  final pulumi.Input<double?>? discountPercentage;
  /// Gets or sets user configurable discovered entity settings.
  final pulumi.Input<DiscoveredEntityLightSummary?>? discoveredEntityLightSummary;
  /// Gets or sets the Enterprise agreement subscription id.
  final pulumi.Input<String?>? eaSubscriptionId;
  /// Gets or sets the duration for which the entity (Web app, VMs) are up in the
  /// on-premises environment.
  final pulumi.Input<EntityUptime?>? entityUptime;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<dynamic>? environmentType;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Gets the group type for the assessment.
  final pulumi.Input<dynamic>? groupType;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final pulumi.Input<dynamic>? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final pulumi.Input<String?>? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final pulumi.Input<String?>? perfDataStartTime;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// Reserved instance.
  final pulumi.Input<dynamic>? reservedInstance;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double?>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<dynamic>? sizingCriterion;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final pulumi.Input<dynamic>? timeRange;

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
  const WebAppAssessmentV2OperationArgs({
    this.appSvcContainerSettings,
    this.appSvcNativeSettings,
    this.assessmentName,
    this.assessmentType,
    this.azureLocation,
    this.azureOfferCode,
    this.azureSecurityOfferingType,
    this.confidenceRatingInPercentage,
    this.currency,
    this.discountPercentage,
    this.discoveredEntityLightSummary,
    this.eaSubscriptionId,
    this.entityUptime,
    this.environmentType,
    required this.groupName,
    this.groupType,
    this.percentile,
    this.perfDataEndTime,
    this.perfDataStartTime,
    required this.projectName,
    this.reservedInstance,
    required this.resourceGroupName,
    this.scalingFactor,
    this.sizingCriterion,
    this.timeRange,
  });

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
      appSvcContainerSettings: (() { final guardedValue = map['appSvcContainerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSvcContainerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appSvcNativeSettings: (() { final guardedValue = map['appSvcNativeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSvcNativeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assessmentName: (() { final guardedValue = map['assessmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assessmentType: (() { final guardedValue = map['assessmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureOfferCode: (() { final guardedValue = map['azureOfferCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureSecurityOfferingType: (() { final guardedValue = map['azureSecurityOfferingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      confidenceRatingInPercentage: (() { final guardedValue = map['confidenceRatingInPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      discoveredEntityLightSummary: (() { final guardedValue = map['discoveredEntityLightSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveredEntityLightSummary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eaSubscriptionId: (() { final guardedValue = map['eaSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityUptime: (() { final guardedValue = map['entityUptime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityUptime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentType: (() { final guardedValue = map['environmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      percentile: (() { final guardedValue = map['percentile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      perfDataEndTime: (() { final guardedValue = map['perfDataEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perfDataStartTime: (() { final guardedValue = map['perfDataStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      reservedInstance: (() { final guardedValue = map['reservedInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sizingCriterion: (() { final guardedValue = map['sizingCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      timeRange: (() { final guardedValue = map['timeRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
