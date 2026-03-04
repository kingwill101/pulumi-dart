// ignore_for_file: unused_element, unnecessary_cast

import 'entity_uptime_response.dart';
import 'sql_db_settings_response.dart';
import 'sql_mi_settings_response.dart';
import 'sql_vm_settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSqlAssessmentV2Operation.
class GetSqlAssessmentV2OperationResult {
  /// Assessment type of the assessment.
  final String? assessmentType;

  /// Gets or sets user preference indicating intent of async commit mode.
  final String? asyncCommitModeIntent;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Azure Location or Azure region where to which the machines will be migrated.
  final String? azureLocation;

  /// Azure Offer Code.
  final String? azureOfferCode;

  /// Gets or sets Azure Offer Code for VM.
  final String? azureOfferCodeForVm;

  /// Gets or sets a value indicating azure security offering type.
  final String? azureSecurityOfferingType;

  /// Gets or sets user configurable SQL database settings.
  final SqlDbSettingsResponse? azureSqlDatabaseSettings;

  /// Gets or sets user configurable SQL managed instance settings.
  final SqlMiSettingsResponse? azureSqlManagedInstanceSettings;

  /// Gets or sets user configurable SQL VM settings.
  final SqlVmSettingsResponse? azureSqlVmSettings;

  /// Confidence Rating in Percentage.
  final double? confidenceRatingInPercentage;

  /// Date and Time when assessment was created.
  final String createdTimestamp;

  /// Currency in which prices should be reported.
  final String? currency;

  /// Gets or sets the Azure Location or Azure region where to which the machines
  /// will be migrated.
  final String? disasterRecoveryLocation;

  /// Custom discount percentage.
  final double? discountPercentage;

  /// Gets or sets the Enterprise agreement subscription id.
  final String? eaSubscriptionId;

  /// Gets or sets a value indicating whether HADR assessments needs to be created.
  final bool? enableHadrAssessment;

  /// Gets or sets the duration for which the entity (SQL, VMs) are up in the
  /// on-premises environment.
  final EntityUptimeResponse? entityUptime;

  /// Gets or sets user configurable setting to display the environment type.
  final String? environmentType;

  /// Gets the group type for the assessment.
  final String? groupType;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// Gets or sets a value indicating whether internet access is available.
  final bool? isInternetAccessAvailable;

  /// Gets or sets user preference indicating intent of multi-subnet configuration.
  final String? multiSubnetIntent;

  /// The name of the resource
  final String name;

  /// Gets or sets SQL optimization logic.
  final String? optimizationLogic;

  /// Gets or sets user configurable setting to display the azure hybrid use benefit.
  final String? osLicense;

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
  final String? provisioningState;

  /// Reserved instance.
  final String? reservedInstance;

  /// Gets or sets azure reserved instance for VM.
  final String? reservedInstanceForVm;

  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final double? scalingFactor;

  /// Schema version.
  final String schemaVersion;

  /// Assessment sizing criterion.
  final String? sizingCriterion;

  /// SQL server license.
  final String? sqlServerLicense;

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

  /// Creates a new [GetSqlAssessmentV2OperationResult].
  /// [assessmentType] Assessment type of the assessment.
  /// [asyncCommitModeIntent] Gets or sets user preference indicating intent of async commit mode.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureOfferCode] Azure Offer Code.
  /// [azureOfferCodeForVm] Gets or sets Azure Offer Code for VM.
  /// [azureSecurityOfferingType] Gets or sets a value indicating azure security offering type.
  /// [azureSqlDatabaseSettings] Gets or sets user configurable SQL database settings.
  /// [azureSqlManagedInstanceSettings] Gets or sets user configurable SQL managed instance settings.
  /// [azureSqlVmSettings] Gets or sets user configurable SQL VM settings.
  /// [confidenceRatingInPercentage] Confidence Rating in Percentage.
  /// [createdTimestamp] Date and Time when assessment was created.
  /// [currency] Currency in which prices should be reported.
  /// [disasterRecoveryLocation] Gets or sets the Azure Location or Azure region where to which the machines
  /// [discountPercentage] Custom discount percentage.
  /// [eaSubscriptionId] Gets or sets the Enterprise agreement subscription id.
  /// [enableHadrAssessment] Gets or sets a value indicating whether HADR assessments needs to be created.
  /// [entityUptime] Gets or sets the duration for which the entity (SQL, VMs) are up in the
  /// [environmentType] Gets or sets user configurable setting to display the environment type.
  /// [groupType] Gets the group type for the assessment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isInternetAccessAvailable] Gets or sets a value indicating whether internet access is available.
  /// [multiSubnetIntent] Gets or sets user preference indicating intent of multi-subnet configuration.
  /// [name] The name of the resource
  /// [optimizationLogic] Gets or sets SQL optimization logic.
  /// [osLicense] Gets or sets user configurable setting to display the azure hybrid use benefit.
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [pricesTimestamp] Last time when rates were queried.
  /// [provisioningState] The status of the last operation.
  /// [reservedInstance] Reserved instance.
  /// [reservedInstanceForVm] Gets or sets azure reserved instance for VM.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [schemaVersion] Schema version.
  /// [sizingCriterion] Assessment sizing criterion.
  /// [sqlServerLicense] SQL server license.
  /// [stage] User configurable setting to display the Stage of Assessment.
  /// [status] Whether assessment is in valid state and all machines have been assessed.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Date and Time when assessment was last updated.
  GetSqlAssessmentV2OperationResult({
    this.assessmentType,
    this.asyncCommitModeIntent,
    required this.azureApiVersion,
    this.azureLocation,
    this.azureOfferCode,
    this.azureOfferCodeForVm,
    this.azureSecurityOfferingType,
    this.azureSqlDatabaseSettings,
    this.azureSqlManagedInstanceSettings,
    this.azureSqlVmSettings,
    this.confidenceRatingInPercentage,
    required this.createdTimestamp,
    this.currency,
    this.disasterRecoveryLocation,
    this.discountPercentage,
    this.eaSubscriptionId,
    this.enableHadrAssessment,
    this.entityUptime,
    this.environmentType,
    this.groupType,
    required this.id,
    this.isInternetAccessAvailable,
    this.multiSubnetIntent,
    required this.name,
    this.optimizationLogic,
    this.osLicense,
    this.percentile,
    this.perfDataEndTime,
    this.perfDataStartTime,
    required this.pricesTimestamp,
    this.provisioningState,
    this.reservedInstance,
    this.reservedInstanceForVm,
    this.scalingFactor,
    required this.schemaVersion,
    this.sizingCriterion,
    this.sqlServerLicense,
    required this.stage,
    required this.status,
    required this.systemData,
    this.timeRange,
    required this.type,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentType': ?assessmentType,
      'asyncCommitModeIntent': ?asyncCommitModeIntent,
      'azureApiVersion': azureApiVersion,
      'azureLocation': ?azureLocation,
      'azureOfferCode': ?azureOfferCode,
      'azureOfferCodeForVm': ?azureOfferCodeForVm,
      'azureSecurityOfferingType': ?azureSecurityOfferingType,
      'azureSqlDatabaseSettings': ?azureSqlDatabaseSettings?.toMap(),
      'azureSqlManagedInstanceSettings': ?azureSqlManagedInstanceSettings
          ?.toMap(),
      'azureSqlVmSettings': ?azureSqlVmSettings?.toMap(),
      'confidenceRatingInPercentage': ?confidenceRatingInPercentage,
      'createdTimestamp': createdTimestamp,
      'currency': ?currency,
      'disasterRecoveryLocation': ?disasterRecoveryLocation,
      'discountPercentage': ?discountPercentage,
      'eaSubscriptionId': ?eaSubscriptionId,
      'enableHadrAssessment': ?enableHadrAssessment,
      'entityUptime': ?entityUptime?.toMap(),
      'environmentType': ?environmentType,
      'groupType': ?groupType,
      'id': id,
      'isInternetAccessAvailable': ?isInternetAccessAvailable,
      'multiSubnetIntent': ?multiSubnetIntent,
      'name': name,
      'optimizationLogic': ?optimizationLogic,
      'osLicense': ?osLicense,
      'percentile': ?percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'pricesTimestamp': pricesTimestamp,
      'provisioningState': ?provisioningState,
      'reservedInstance': ?reservedInstance,
      'reservedInstanceForVm': ?reservedInstanceForVm,
      'scalingFactor': ?scalingFactor,
      'schemaVersion': schemaVersion,
      'sizingCriterion': ?sizingCriterion,
      'sqlServerLicense': ?sqlServerLicense,
      'stage': stage,
      'status': status,
      'systemData': systemData.toMap(),
      'timeRange': ?timeRange,
      'type': type,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory GetSqlAssessmentV2OperationResult.fromMap(Map<String, dynamic> map) {
    return GetSqlAssessmentV2OperationResult(
      assessmentType: (() {
        final guardedValue = map['assessmentType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      asyncCommitModeIntent: (() {
        final guardedValue = map['asyncCommitModeIntent'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      azureLocation: (() {
        final guardedValue = map['azureLocation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureOfferCode: (() {
        final guardedValue = map['azureOfferCode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureOfferCodeForVm: (() {
        final guardedValue = map['azureOfferCodeForVm'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureSecurityOfferingType: (() {
        final guardedValue = map['azureSecurityOfferingType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureSqlDatabaseSettings: (() {
        final guardedValue = map['azureSqlDatabaseSettings'];
        if (guardedValue == null) return null;
        return SqlDbSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureSqlManagedInstanceSettings: (() {
        final guardedValue = map['azureSqlManagedInstanceSettings'];
        if (guardedValue == null) return null;
        return SqlMiSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureSqlVmSettings: (() {
        final guardedValue = map['azureSqlVmSettings'];
        if (guardedValue == null) return null;
        return SqlVmSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      confidenceRatingInPercentage: (() {
        final guardedValue = map['confidenceRatingInPercentage'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      createdTimestamp: map['createdTimestamp'] as String,
      currency: (() {
        final guardedValue = map['currency'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      disasterRecoveryLocation: (() {
        final guardedValue = map['disasterRecoveryLocation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      discountPercentage: (() {
        final guardedValue = map['discountPercentage'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      eaSubscriptionId: (() {
        final guardedValue = map['eaSubscriptionId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enableHadrAssessment: (() {
        final guardedValue = map['enableHadrAssessment'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      entityUptime: (() {
        final guardedValue = map['entityUptime'];
        if (guardedValue == null) return null;
        return EntityUptimeResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      environmentType: (() {
        final guardedValue = map['environmentType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groupType: (() {
        final guardedValue = map['groupType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      isInternetAccessAvailable: (() {
        final guardedValue = map['isInternetAccessAvailable'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      multiSubnetIntent: (() {
        final guardedValue = map['multiSubnetIntent'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      optimizationLogic: (() {
        final guardedValue = map['optimizationLogic'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      osLicense: (() {
        final guardedValue = map['osLicense'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      percentile: (() {
        final guardedValue = map['percentile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      perfDataEndTime: (() {
        final guardedValue = map['perfDataEndTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      perfDataStartTime: (() {
        final guardedValue = map['perfDataStartTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pricesTimestamp: map['pricesTimestamp'] as String,
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      reservedInstance: (() {
        final guardedValue = map['reservedInstance'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      reservedInstanceForVm: (() {
        final guardedValue = map['reservedInstanceForVm'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      scalingFactor: (() {
        final guardedValue = map['scalingFactor'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      schemaVersion: map['schemaVersion'] as String,
      sizingCriterion: (() {
        final guardedValue = map['sizingCriterion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sqlServerLicense: (() {
        final guardedValue = map['sqlServerLicense'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      stage: map['stage'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      timeRange: (() {
        final guardedValue = map['timeRange'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}
