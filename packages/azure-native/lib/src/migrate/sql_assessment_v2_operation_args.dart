// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_uptime.dart';
import 'sql_db_settings.dart';
import 'sql_mi_settings.dart';
import 'sql_vm_settings.dart';

/// {@template pulumi_migrate_sql_assessment_v2_operation_args_doc}
/// The set of arguments for SqlAssessmentV2Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_sql_assessment_v2_operation_args_doc}
class SqlAssessmentV2OperationArgs {
  /// SQL Assessment arm name.
  final pulumi.Input<String>? assessmentName;
  /// Assessment type of the assessment.
  final pulumi.Input<String>? assessmentType;
  /// Gets or sets user preference indicating intent of async commit mode.
  final pulumi.Input<String>? asyncCommitModeIntent;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String>? azureLocation;
  /// Azure Offer Code.
  final pulumi.Input<String>? azureOfferCode;
  /// Gets or sets Azure Offer Code for VM.
  final pulumi.Input<String>? azureOfferCodeForVm;
  /// Gets or sets a value indicating azure security offering type.
  final pulumi.Input<String>? azureSecurityOfferingType;
  /// Gets or sets user configurable SQL database settings.
  final pulumi.Input<SqlDbSettings>? azureSqlDatabaseSettings;
  /// Gets or sets user configurable SQL managed instance settings.
  final pulumi.Input<SqlMiSettings>? azureSqlManagedInstanceSettings;
  /// Gets or sets user configurable SQL VM settings.
  final pulumi.Input<SqlVmSettings>? azureSqlVmSettings;
  /// Confidence Rating in Percentage.
  final pulumi.Input<double>? confidenceRatingInPercentage;
  /// Currency in which prices should be reported.
  final pulumi.Input<String>? currency;
  /// Gets or sets the Azure Location or Azure region where to which the machines
  /// will be migrated.
  final pulumi.Input<String>? disasterRecoveryLocation;
  /// Custom discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// Gets or sets the Enterprise agreement subscription id.
  final pulumi.Input<String>? eaSubscriptionId;
  /// Gets or sets a value indicating whether HADR assessments needs to be created.
  final pulumi.Input<bool>? enableHadrAssessment;
  /// Gets or sets the duration for which the entity (SQL, VMs) are up in the
  /// on-premises environment.
  final pulumi.Input<EntityUptime>? entityUptime;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<String>? environmentType;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Gets the group type for the assessment.
  final pulumi.Input<String>? groupType;
  /// Gets or sets a value indicating whether internet access is available.
  final pulumi.Input<bool>? isInternetAccessAvailable;
  /// Gets or sets user preference indicating intent of multi-subnet configuration.
  final pulumi.Input<String>? multiSubnetIntent;
  /// Gets or sets SQL optimization logic.
  final pulumi.Input<String>? optimizationLogic;
  /// Gets or sets user configurable setting to display the azure hybrid use benefit.
  final pulumi.Input<String>? osLicense;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final pulumi.Input<String>? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final pulumi.Input<String>? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final pulumi.Input<String>? perfDataStartTime;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// Reserved instance.
  final pulumi.Input<String>? reservedInstance;
  /// Gets or sets azure reserved instance for VM.
  final pulumi.Input<String>? reservedInstanceForVm;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String>? sizingCriterion;
  /// SQL server license.
  final pulumi.Input<String>? sqlServerLicense;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final pulumi.Input<String>? timeRange;

  /// Creates a new [SqlAssessmentV2OperationArgs].
  /// [assessmentName] SQL Assessment arm name.
  /// [assessmentType] Assessment type of the assessment.
  /// [asyncCommitModeIntent] Gets or sets user preference indicating intent of async commit mode.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureOfferCode] Azure Offer Code.
  /// [azureOfferCodeForVm] Gets or sets Azure Offer Code for VM.
  /// [azureSecurityOfferingType] Gets or sets a value indicating azure security offering type.
  /// [azureSqlDatabaseSettings] Gets or sets user configurable SQL database settings.
  /// [azureSqlManagedInstanceSettings] Gets or sets user configurable SQL managed instance settings.
  /// [azureSqlVmSettings] Gets or sets user configurable SQL VM settings.
  /// [confidenceRatingInPercentage] Confidence Rating in Percentage.
  /// [currency] Currency in which prices should be reported.
  /// [disasterRecoveryLocation] Gets or sets the Azure Location or Azure region where to which the machines
  /// [discountPercentage] Custom discount percentage.
  /// [eaSubscriptionId] Gets or sets the Enterprise agreement subscription id.
  /// [enableHadrAssessment] Gets or sets a value indicating whether HADR assessments needs to be created.
  /// [entityUptime] Gets or sets the duration for which the entity (SQL, VMs) are up in the
  /// [environmentType] Gets or sets user configurable setting to display the environment type.
  /// [groupName] Group ARM name
  /// [groupType] Gets the group type for the assessment.
  /// [isInternetAccessAvailable] Gets or sets a value indicating whether internet access is available.
  /// [multiSubnetIntent] Gets or sets user preference indicating intent of multi-subnet configuration.
  /// [optimizationLogic] Gets or sets SQL optimization logic.
  /// [osLicense] Gets or sets user configurable setting to display the azure hybrid use benefit.
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [projectName] Assessment Project Name
  /// [provisioningState] The status of the last operation.
  /// [reservedInstance] Reserved instance.
  /// [reservedInstanceForVm] Gets or sets azure reserved instance for VM.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [sizingCriterion] Assessment sizing criterion.
  /// [sqlServerLicense] SQL server license.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  SqlAssessmentV2OperationArgs({
    String? assessmentName,
    String? assessmentType,
    String? asyncCommitModeIntent,
    String? azureLocation,
    String? azureOfferCode,
    String? azureOfferCodeForVm,
    String? azureSecurityOfferingType,
    SqlDbSettings? azureSqlDatabaseSettings,
    SqlMiSettings? azureSqlManagedInstanceSettings,
    SqlVmSettings? azureSqlVmSettings,
    double? confidenceRatingInPercentage,
    String? currency,
    String? disasterRecoveryLocation,
    double? discountPercentage,
    String? eaSubscriptionId,
    bool? enableHadrAssessment,
    EntityUptime? entityUptime,
    String? environmentType,
    required String groupName,
    String? groupType,
    bool? isInternetAccessAvailable,
    String? multiSubnetIntent,
    String? optimizationLogic,
    String? osLicense,
    String? percentile,
    String? perfDataEndTime,
    String? perfDataStartTime,
    required String projectName,
    String? provisioningState,
    String? reservedInstance,
    String? reservedInstanceForVm,
    required String resourceGroupName,
    double? scalingFactor,
    String? sizingCriterion,
    String? sqlServerLicense,
    String? timeRange,
  }) :
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      assessmentType = pulumi.Input.asOptionalInput<String>(assessmentType),
      asyncCommitModeIntent = pulumi.Input.asOptionalInput<String>(asyncCommitModeIntent),
      azureLocation = pulumi.Input.asOptionalInput<String>(azureLocation),
      azureOfferCode = pulumi.Input.asOptionalInput<String>(azureOfferCode),
      azureOfferCodeForVm = pulumi.Input.asOptionalInput<String>(azureOfferCodeForVm),
      azureSecurityOfferingType = pulumi.Input.asOptionalInput<String>(azureSecurityOfferingType),
      azureSqlDatabaseSettings = pulumi.Input.asOptionalInput<SqlDbSettings>(azureSqlDatabaseSettings),
      azureSqlManagedInstanceSettings = pulumi.Input.asOptionalInput<SqlMiSettings>(azureSqlManagedInstanceSettings),
      azureSqlVmSettings = pulumi.Input.asOptionalInput<SqlVmSettings>(azureSqlVmSettings),
      confidenceRatingInPercentage = pulumi.Input.asOptionalInput<double>(confidenceRatingInPercentage),
      currency = pulumi.Input.asOptionalInput<String>(currency),
      disasterRecoveryLocation = pulumi.Input.asOptionalInput<String>(disasterRecoveryLocation),
      discountPercentage = pulumi.Input.asOptionalInput<double>(discountPercentage),
      eaSubscriptionId = pulumi.Input.asOptionalInput<String>(eaSubscriptionId),
      enableHadrAssessment = pulumi.Input.asOptionalInput<bool>(enableHadrAssessment),
      entityUptime = pulumi.Input.asOptionalInput<EntityUptime>(entityUptime),
      environmentType = pulumi.Input.asOptionalInput<String>(environmentType),
      groupName = pulumi.Input.asInput<String>(groupName),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      isInternetAccessAvailable = pulumi.Input.asOptionalInput<bool>(isInternetAccessAvailable),
      multiSubnetIntent = pulumi.Input.asOptionalInput<String>(multiSubnetIntent),
      optimizationLogic = pulumi.Input.asOptionalInput<String>(optimizationLogic),
      osLicense = pulumi.Input.asOptionalInput<String>(osLicense),
      percentile = pulumi.Input.asOptionalInput<String>(percentile),
      perfDataEndTime = pulumi.Input.asOptionalInput<String>(perfDataEndTime),
      perfDataStartTime = pulumi.Input.asOptionalInput<String>(perfDataStartTime),
      projectName = pulumi.Input.asInput<String>(projectName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      reservedInstance = pulumi.Input.asOptionalInput<String>(reservedInstance),
      reservedInstanceForVm = pulumi.Input.asOptionalInput<String>(reservedInstanceForVm),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scalingFactor = pulumi.Input.asOptionalInput<double>(scalingFactor),
      sizingCriterion = pulumi.Input.asOptionalInput<String>(sizingCriterion),
      sqlServerLicense = pulumi.Input.asOptionalInput<String>(sqlServerLicense),
      timeRange = pulumi.Input.asOptionalInput<String>(timeRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'assessmentType': ?assessmentType,
      'asyncCommitModeIntent': ?asyncCommitModeIntent,
      'azureLocation': ?azureLocation,
      'azureOfferCode': ?azureOfferCode,
      'azureOfferCodeForVm': ?azureOfferCodeForVm,
      'azureSecurityOfferingType': ?azureSecurityOfferingType,
      'azureSqlDatabaseSettings': ?pulumi.Input.mapOptionalInputValue<SqlDbSettings, Map<String, dynamic>>(azureSqlDatabaseSettings, (value) => value.toMap()),
      'azureSqlManagedInstanceSettings': ?pulumi.Input.mapOptionalInputValue<SqlMiSettings, Map<String, dynamic>>(azureSqlManagedInstanceSettings, (value) => value.toMap()),
      'azureSqlVmSettings': ?pulumi.Input.mapOptionalInputValue<SqlVmSettings, Map<String, dynamic>>(azureSqlVmSettings, (value) => value.toMap()),
      'confidenceRatingInPercentage': ?confidenceRatingInPercentage,
      'currency': ?currency,
      'disasterRecoveryLocation': ?disasterRecoveryLocation,
      'discountPercentage': ?discountPercentage,
      'eaSubscriptionId': ?eaSubscriptionId,
      'enableHadrAssessment': ?enableHadrAssessment,
      'entityUptime': ?pulumi.Input.mapOptionalInputValue<EntityUptime, Map<String, dynamic>>(entityUptime, (value) => value.toMap()),
      'environmentType': ?environmentType,
      'groupName': groupName,
      'groupType': ?groupType,
      'isInternetAccessAvailable': ?isInternetAccessAvailable,
      'multiSubnetIntent': ?multiSubnetIntent,
      'optimizationLogic': ?optimizationLogic,
      'osLicense': ?osLicense,
      'percentile': ?percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'reservedInstance': ?reservedInstance,
      'reservedInstanceForVm': ?reservedInstanceForVm,
      'resourceGroupName': resourceGroupName,
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'sqlServerLicense': ?sqlServerLicense,
      'timeRange': ?timeRange,
    };
  }

  factory SqlAssessmentV2OperationArgs.fromMap(Map<String, dynamic> map) {
    return SqlAssessmentV2OperationArgs(
      assessmentName: map['assessmentName'] == null ? null : map['assessmentName'] as String,
      assessmentType: map['assessmentType'] == null ? null : map['assessmentType'] as String,
      asyncCommitModeIntent: map['asyncCommitModeIntent'] == null ? null : map['asyncCommitModeIntent'] as String,
      azureLocation: map['azureLocation'] == null ? null : map['azureLocation'] as String,
      azureOfferCode: map['azureOfferCode'] == null ? null : map['azureOfferCode'] as String,
      azureOfferCodeForVm: map['azureOfferCodeForVm'] == null ? null : map['azureOfferCodeForVm'] as String,
      azureSecurityOfferingType: map['azureSecurityOfferingType'] == null ? null : map['azureSecurityOfferingType'] as String,
      azureSqlDatabaseSettings: map['azureSqlDatabaseSettings'] == null ? null : SqlDbSettings.fromMap((map['azureSqlDatabaseSettings'] as Map).cast<String, dynamic>()),
      azureSqlManagedInstanceSettings: map['azureSqlManagedInstanceSettings'] == null ? null : SqlMiSettings.fromMap((map['azureSqlManagedInstanceSettings'] as Map).cast<String, dynamic>()),
      azureSqlVmSettings: map['azureSqlVmSettings'] == null ? null : SqlVmSettings.fromMap((map['azureSqlVmSettings'] as Map).cast<String, dynamic>()),
      confidenceRatingInPercentage: map['confidenceRatingInPercentage'] == null ? null : map['confidenceRatingInPercentage'] as double,
      currency: map['currency'] == null ? null : map['currency'] as String,
      disasterRecoveryLocation: map['disasterRecoveryLocation'] == null ? null : map['disasterRecoveryLocation'] as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      eaSubscriptionId: map['eaSubscriptionId'] == null ? null : map['eaSubscriptionId'] as String,
      enableHadrAssessment: map['enableHadrAssessment'] == null ? null : map['enableHadrAssessment'] as bool,
      entityUptime: map['entityUptime'] == null ? null : EntityUptime.fromMap((map['entityUptime'] as Map).cast<String, dynamic>()),
      environmentType: map['environmentType'] == null ? null : map['environmentType'] as String,
      groupName: map['groupName'] as String,
      groupType: map['groupType'] == null ? null : map['groupType'] as String,
      isInternetAccessAvailable: map['isInternetAccessAvailable'] == null ? null : map['isInternetAccessAvailable'] as bool,
      multiSubnetIntent: map['multiSubnetIntent'] == null ? null : map['multiSubnetIntent'] as String,
      optimizationLogic: map['optimizationLogic'] == null ? null : map['optimizationLogic'] as String,
      osLicense: map['osLicense'] == null ? null : map['osLicense'] as String,
      percentile: map['percentile'] == null ? null : map['percentile'] as String,
      perfDataEndTime: map['perfDataEndTime'] == null ? null : map['perfDataEndTime'] as String,
      perfDataStartTime: map['perfDataStartTime'] == null ? null : map['perfDataStartTime'] as String,
      projectName: map['projectName'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      reservedInstance: map['reservedInstance'] == null ? null : map['reservedInstance'] as String,
      reservedInstanceForVm: map['reservedInstanceForVm'] == null ? null : map['reservedInstanceForVm'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
      sizingCriterion: map['sizingCriterion'] == null ? null : map['sizingCriterion'] as String,
      sqlServerLicense: map['sqlServerLicense'] == null ? null : map['sqlServerLicense'] as String,
      timeRange: map['timeRange'] == null ? null : map['timeRange'] as String,
    );
  }
}

