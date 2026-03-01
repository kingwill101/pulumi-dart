// ignore_for_file: unused_element, unnecessary_cast

import 'billing_settings_response.dart';
import 'entity_uptime_response.dart';
import 'performance_data_response.dart';
import 'savings_settings_response.dart';
import 'sql_db_settings_v3_response.dart';
import 'sql_mi_settings_v3_response.dart';
import 'sql_vm_settings_response.dart';

/// SQL assessment settings class.
class SqlAssessmentSettingsResponse {
  /// Gets or sets user preference indicating intent of async commit mode.
  final String? asyncCommitModeIntent;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final String? azureLocation;
  /// Gets or sets a value indicating azure security offering type.
  final String? azureSecurityOfferingType;
  /// Gets or sets user configurable SQL database settings.
  final SqlDbSettingsV3Response? azureSqlDatabaseSettings;
  /// Gets or sets user configurable SQL managed instance settings.
  final SqlMiSettingsV3Response? azureSqlManagedInstanceSettings;
  /// Gets or sets user configurable SQL VM settings.
  final SqlVmSettingsResponse? azureSqlVmSettings;
  /// Gets or sets the billing settings.
  final BillingSettingsResponse? billingSettings;
  /// Currency in which prices should be reported.
  final String? currency;
  /// Gets or sets the Azure Location or Azure region where to which the machines
  /// will be migrated.
  final String? disasterRecoveryLocation;
  /// Custom discount percentage.
  final double? discountPercentage;
  /// Gets or sets a value indicating whether HADR assessments needs to be created.
  final bool? enableHadrAssessment;
  /// Gets or sets the duration for which the entity (SQL, VMs) are up in the
  /// on-premises environment.
  final EntityUptimeResponse? entityUptime;
  /// Gets or sets user configurable setting to display the environment type.
  final String? environmentType;
  /// Gets or sets a value indicating whether internet access is available.
  final bool? isInternetAccessAvailable;
  /// Gets or sets user preference indicating intent of multi-subnet configuration.
  final String? multiSubnetIntent;
  /// Gets or sets user configurable setting to display the azure hybrid use benefit.
  final String? osLicense;
  /// Gets or sets the performance data.
  final PerformanceDataResponse? performanceData;
  /// Gets or sets SQL the preferred azure targets.
  final List<String>? preferredTargets;
  /// Gets or sets the savings settings.
  final SavingsSettingsResponse? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final double? scalingFactor;
  /// Assessment sizing criterion.
  final String? sizingCriterion;
  /// SQL server license.
  final String? sqlServerLicense;

  /// Creates a new [SqlAssessmentSettingsResponse].
  /// [asyncCommitModeIntent] Gets or sets user preference indicating intent of async commit mode.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureSecurityOfferingType] Gets or sets a value indicating azure security offering type.
  /// [azureSqlDatabaseSettings] Gets or sets user configurable SQL database settings.
  /// [azureSqlManagedInstanceSettings] Gets or sets user configurable SQL managed instance settings.
  /// [azureSqlVmSettings] Gets or sets user configurable SQL VM settings.
  /// [billingSettings] Gets or sets the billing settings.
  /// [currency] Currency in which prices should be reported.
  /// [disasterRecoveryLocation] Gets or sets the Azure Location or Azure region where to which the machines
  /// [discountPercentage] Custom discount percentage.
  /// [enableHadrAssessment] Gets or sets a value indicating whether HADR assessments needs to be created.
  /// [entityUptime] Gets or sets the duration for which the entity (SQL, VMs) are up in the
  /// [environmentType] Gets or sets user configurable setting to display the environment type.
  /// [isInternetAccessAvailable] Gets or sets a value indicating whether internet access is available.
  /// [multiSubnetIntent] Gets or sets user preference indicating intent of multi-subnet configuration.
  /// [osLicense] Gets or sets user configurable setting to display the azure hybrid use benefit.
  /// [performanceData] Gets or sets the performance data.
  /// [preferredTargets] Gets or sets SQL the preferred azure targets.
  /// [savingsSettings] Gets or sets the savings settings.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [sizingCriterion] Assessment sizing criterion.
  /// [sqlServerLicense] SQL server license.
  SqlAssessmentSettingsResponse({
    this.asyncCommitModeIntent,
    this.azureLocation,
    this.azureSecurityOfferingType,
    this.azureSqlDatabaseSettings,
    this.azureSqlManagedInstanceSettings,
    this.azureSqlVmSettings,
    this.billingSettings,
    this.currency,
    this.disasterRecoveryLocation,
    this.discountPercentage,
    this.enableHadrAssessment,
    this.entityUptime,
    this.environmentType,
    this.isInternetAccessAvailable,
    this.multiSubnetIntent,
    this.osLicense,
    this.performanceData,
    this.preferredTargets,
    this.savingsSettings,
    this.scalingFactor,
    this.sizingCriterion,
    this.sqlServerLicense,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncCommitModeIntent': ?asyncCommitModeIntent,
      'azureLocation': ?azureLocation,
      'azureSecurityOfferingType': ?azureSecurityOfferingType,
      'azureSqlDatabaseSettings': ?azureSqlDatabaseSettings == null ? null : azureSqlDatabaseSettings!.toMap(),
      'azureSqlManagedInstanceSettings': ?azureSqlManagedInstanceSettings == null ? null : azureSqlManagedInstanceSettings!.toMap(),
      'azureSqlVmSettings': ?azureSqlVmSettings == null ? null : azureSqlVmSettings!.toMap(),
      'billingSettings': ?billingSettings == null ? null : billingSettings!.toMap(),
      'currency': ?currency,
      'disasterRecoveryLocation': ?disasterRecoveryLocation,
      'discountPercentage': ?discountPercentage,
      'enableHadrAssessment': ?enableHadrAssessment,
      'entityUptime': ?entityUptime == null ? null : entityUptime!.toMap(),
      'environmentType': ?environmentType,
      'isInternetAccessAvailable': ?isInternetAccessAvailable,
      'multiSubnetIntent': ?multiSubnetIntent,
      'osLicense': ?osLicense,
      'performanceData': ?performanceData == null ? null : performanceData!.toMap(),
      'preferredTargets': ?preferredTargets,
      'savingsSettings': ?savingsSettings == null ? null : savingsSettings!.toMap(),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'sqlServerLicense': ?sqlServerLicense,
    };
  }

  factory SqlAssessmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlAssessmentSettingsResponse(
      asyncCommitModeIntent: map['asyncCommitModeIntent'] == null ? null : map['asyncCommitModeIntent'] as String,
      azureLocation: map['azureLocation'] == null ? null : map['azureLocation'] as String,
      azureSecurityOfferingType: map['azureSecurityOfferingType'] == null ? null : map['azureSecurityOfferingType'] as String,
      azureSqlDatabaseSettings: map['azureSqlDatabaseSettings'] == null ? null : SqlDbSettingsV3Response.fromMap((map['azureSqlDatabaseSettings'] as Map).cast<String, dynamic>()),
      azureSqlManagedInstanceSettings: map['azureSqlManagedInstanceSettings'] == null ? null : SqlMiSettingsV3Response.fromMap((map['azureSqlManagedInstanceSettings'] as Map).cast<String, dynamic>()),
      azureSqlVmSettings: map['azureSqlVmSettings'] == null ? null : SqlVmSettingsResponse.fromMap((map['azureSqlVmSettings'] as Map).cast<String, dynamic>()),
      billingSettings: map['billingSettings'] == null ? null : BillingSettingsResponse.fromMap((map['billingSettings'] as Map).cast<String, dynamic>()),
      currency: map['currency'] == null ? null : map['currency'] as String,
      disasterRecoveryLocation: map['disasterRecoveryLocation'] == null ? null : map['disasterRecoveryLocation'] as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      enableHadrAssessment: map['enableHadrAssessment'] == null ? null : map['enableHadrAssessment'] as bool,
      entityUptime: map['entityUptime'] == null ? null : EntityUptimeResponse.fromMap((map['entityUptime'] as Map).cast<String, dynamic>()),
      environmentType: map['environmentType'] == null ? null : map['environmentType'] as String,
      isInternetAccessAvailable: map['isInternetAccessAvailable'] == null ? null : map['isInternetAccessAvailable'] as bool,
      multiSubnetIntent: map['multiSubnetIntent'] == null ? null : map['multiSubnetIntent'] as String,
      osLicense: map['osLicense'] == null ? null : map['osLicense'] as String,
      performanceData: map['performanceData'] == null ? null : PerformanceDataResponse.fromMap((map['performanceData'] as Map).cast<String, dynamic>()),
      preferredTargets: map['preferredTargets'] == null ? null : (map['preferredTargets'] as List).cast<String>(),
      savingsSettings: map['savingsSettings'] == null ? null : SavingsSettingsResponse.fromMap((map['savingsSettings'] as Map).cast<String, dynamic>()),
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
      sizingCriterion: map['sizingCriterion'] == null ? null : map['sizingCriterion'] as String,
      sqlServerLicense: map['sqlServerLicense'] == null ? null : map['sqlServerLicense'] as String,
    );
  }
}

