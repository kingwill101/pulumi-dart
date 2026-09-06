// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_settings.dart';
import 'entity_uptime.dart';
import 'performance_data.dart';
import 'savings_settings.dart';
import 'sql_db_settings_v3.dart';
import 'sql_mi_settings_v3.dart';
import 'sql_vm_settings.dart';

/// SQL assessment settings class.
class SqlAssessmentSettings {
  /// Gets or sets user preference indicating intent of async commit mode.
  final pulumi.Input<dynamic>? asyncCommitModeIntent;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String?>? azureLocation;
  /// Gets or sets a value indicating azure security offering type.
  final pulumi.Input<dynamic>? azureSecurityOfferingType;
  /// Gets or sets user configurable SQL database settings.
  final pulumi.Input<SqlDbSettingsV3?>? azureSqlDatabaseSettings;
  /// Gets or sets user configurable SQL managed instance settings.
  final pulumi.Input<SqlMiSettingsV3?>? azureSqlManagedInstanceSettings;
  /// Gets or sets user configurable SQL VM settings.
  final pulumi.Input<SqlVmSettings?>? azureSqlVmSettings;
  /// Gets or sets the billing settings.
  final pulumi.Input<BillingSettings?>? billingSettings;
  /// Currency in which prices should be reported.
  final pulumi.Input<dynamic>? currency;
  /// Gets or sets the Azure Location or Azure region where to which the machines
  /// will be migrated.
  final pulumi.Input<dynamic>? disasterRecoveryLocation;
  /// Custom discount percentage.
  final pulumi.Input<double?>? discountPercentage;
  /// Gets or sets a value indicating whether HADR assessments needs to be created.
  final pulumi.Input<bool?>? enableHadrAssessment;
  /// Gets or sets the duration for which the entity (SQL, VMs) are up in the
  /// on-premises environment.
  final pulumi.Input<EntityUptime?>? entityUptime;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<dynamic>? environmentType;
  /// Gets or sets a value indicating whether internet access is available.
  final pulumi.Input<bool?>? isInternetAccessAvailable;
  /// Gets or sets user preference indicating intent of multi-subnet configuration.
  final pulumi.Input<dynamic>? multiSubnetIntent;
  /// Gets or sets user configurable setting to display the azure hybrid use benefit.
  final pulumi.Input<dynamic>? osLicense;
  /// Gets or sets the performance data.
  final pulumi.Input<PerformanceData?>? performanceData;
  /// Gets or sets SQL the preferred azure targets.
  final pulumi.Input<List<dynamic>?>? preferredTargets;
  /// Gets or sets the savings settings.
  final pulumi.Input<SavingsSettings?>? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double?>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<dynamic>? sizingCriterion;
  /// SQL server license.
  final pulumi.Input<dynamic>? sqlServerLicense;

  /// Creates a new [SqlAssessmentSettings].
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
  const SqlAssessmentSettings({
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
      'azureSqlDatabaseSettings': ?pulumi.Input.mapOptionalInputValue<SqlDbSettingsV3, Map<String, dynamic>>(azureSqlDatabaseSettings, (value) => value.toMap()),
      'azureSqlManagedInstanceSettings': ?pulumi.Input.mapOptionalInputValue<SqlMiSettingsV3, Map<String, dynamic>>(azureSqlManagedInstanceSettings, (value) => value.toMap()),
      'azureSqlVmSettings': ?pulumi.Input.mapOptionalInputValue<SqlVmSettings, Map<String, dynamic>>(azureSqlVmSettings, (value) => value.toMap()),
      'billingSettings': ?pulumi.Input.mapOptionalInputValue<BillingSettings, Map<String, dynamic>>(billingSettings, (value) => value.toMap()),
      'currency': ?currency,
      'disasterRecoveryLocation': ?disasterRecoveryLocation,
      'discountPercentage': ?discountPercentage,
      'enableHadrAssessment': ?enableHadrAssessment,
      'entityUptime': ?pulumi.Input.mapOptionalInputValue<EntityUptime, Map<String, dynamic>>(entityUptime, (value) => value.toMap()),
      'environmentType': ?environmentType,
      'isInternetAccessAvailable': ?isInternetAccessAvailable,
      'multiSubnetIntent': ?multiSubnetIntent,
      'osLicense': ?osLicense,
      'performanceData': ?pulumi.Input.mapOptionalInputValue<PerformanceData, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'preferredTargets': ?preferredTargets,
      'savingsSettings': ?pulumi.Input.mapOptionalInputValue<SavingsSettings, Map<String, dynamic>>(savingsSettings, (value) => value.toMap()),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'sqlServerLicense': ?sqlServerLicense,
    };
  }

  factory SqlAssessmentSettings.fromMap(Map<String, dynamic> map) {
    return SqlAssessmentSettings(
      asyncCommitModeIntent: (() { final guardedValue = map['asyncCommitModeIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureSecurityOfferingType: (() { final guardedValue = map['azureSecurityOfferingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureSqlDatabaseSettings: (() { final guardedValue = map['azureSqlDatabaseSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlDbSettingsV3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSqlManagedInstanceSettings: (() { final guardedValue = map['azureSqlManagedInstanceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlMiSettingsV3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSqlVmSettings: (() { final guardedValue = map['azureSqlVmSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlVmSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billingSettings: (() { final guardedValue = map['billingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disasterRecoveryLocation: (() { final guardedValue = map['disasterRecoveryLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      enableHadrAssessment: (() { final guardedValue = map['enableHadrAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entityUptime: (() { final guardedValue = map['entityUptime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityUptime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentType: (() { final guardedValue = map['environmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      isInternetAccessAvailable: (() { final guardedValue = map['isInternetAccessAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      multiSubnetIntent: (() { final guardedValue = map['multiSubnetIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      osLicense: (() { final guardedValue = map['osLicense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      performanceData: (() { final guardedValue = map['performanceData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerformanceData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredTargets: (() { final guardedValue = map['preferredTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      savingsSettings: (() { final guardedValue = map['savingsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SavingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sizingCriterion: (() { final guardedValue = map['sizingCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sqlServerLicense: (() { final guardedValue = map['sqlServerLicense']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
