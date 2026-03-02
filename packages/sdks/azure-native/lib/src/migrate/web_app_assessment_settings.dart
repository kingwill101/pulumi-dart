// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_svc_container_settings.dart';
import 'app_svc_native_settings.dart';
import 'billing_settings.dart';
import 'performance_data.dart';
import 'savings_settings.dart';

/// Web app assessment settings class.
class WebAppAssessmentSettings {
  /// App Service container settings.
  final pulumi.Input<AppSvcContainerSettings> appSvcContainerSettings;
  /// App Service native settings.
  final pulumi.Input<AppSvcNativeSettings> appSvcNativeSettings;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String>? azureLocation;
  /// Azure security offering type.
  final pulumi.Input<String> azureSecurityOfferingType;
  /// Gets or sets the billing settings.
  final pulumi.Input<BillingSettings>? billingSettings;
  /// Currency in which prices should be reported.
  final pulumi.Input<String>? currency;
  /// Custom discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<String>? environmentType;
  /// Gets or sets the performance data.
  final pulumi.Input<PerformanceData>? performanceData;
  /// Gets or sets the savings settings.
  final pulumi.Input<SavingsSettings>? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String>? sizingCriterion;

  /// Creates a new [WebAppAssessmentSettings].
  /// [appSvcContainerSettings] App Service container settings.
  /// [appSvcNativeSettings] App Service native settings.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureSecurityOfferingType] Azure security offering type.
  /// [billingSettings] Gets or sets the billing settings.
  /// [currency] Currency in which prices should be reported.
  /// [discountPercentage] Custom discount percentage.
  /// [environmentType] Gets or sets user configurable setting to display the environment type.
  /// [performanceData] Gets or sets the performance data.
  /// [savingsSettings] Gets or sets the savings settings.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [sizingCriterion] Assessment sizing criterion.
  WebAppAssessmentSettings({
    required this.appSvcContainerSettings,
    required this.appSvcNativeSettings,
    this.azureLocation,
    required this.azureSecurityOfferingType,
    this.billingSettings,
    this.currency,
    this.discountPercentage,
    this.environmentType,
    this.performanceData,
    this.savingsSettings,
    this.scalingFactor,
    this.sizingCriterion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSvcContainerSettings': pulumi.Input.mapInputValue<AppSvcContainerSettings, Map<String, dynamic>>(appSvcContainerSettings, (value) => value.toMap()),
      'appSvcNativeSettings': pulumi.Input.mapInputValue<AppSvcNativeSettings, Map<String, dynamic>>(appSvcNativeSettings, (value) => value.toMap()),
      'azureLocation': ?azureLocation,
      'azureSecurityOfferingType': azureSecurityOfferingType,
      'billingSettings': ?pulumi.Input.mapOptionalInputValue<BillingSettings, Map<String, dynamic>>(billingSettings, (value) => value.toMap()),
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'environmentType': ?environmentType,
      'performanceData': ?pulumi.Input.mapOptionalInputValue<PerformanceData, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'savingsSettings': ?pulumi.Input.mapOptionalInputValue<SavingsSettings, Map<String, dynamic>>(savingsSettings, (value) => value.toMap()),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
    };
  }

  factory WebAppAssessmentSettings.fromMap(Map<String, dynamic> map) {
    return WebAppAssessmentSettings(
      appSvcContainerSettings: (AppSvcContainerSettings.fromMap((map['appSvcContainerSettings'] as Map).cast<String, dynamic>())).input(),
      appSvcNativeSettings: (AppSvcNativeSettings.fromMap((map['appSvcNativeSettings'] as Map).cast<String, dynamic>())).input(),
      azureLocation: map['azureLocation'] == null ? null : (map['azureLocation'] as String).input(),
      azureSecurityOfferingType: (map['azureSecurityOfferingType'] as String).input(),
      billingSettings: map['billingSettings'] == null ? null : (BillingSettings.fromMap((map['billingSettings'] as Map).cast<String, dynamic>())).input(),
      currency: map['currency'] == null ? null : (map['currency'] as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage'] as double).input(),
      environmentType: map['environmentType'] == null ? null : (map['environmentType'] as String).input(),
      performanceData: map['performanceData'] == null ? null : (PerformanceData.fromMap((map['performanceData'] as Map).cast<String, dynamic>())).input(),
      savingsSettings: map['savingsSettings'] == null ? null : (SavingsSettings.fromMap((map['savingsSettings'] as Map).cast<String, dynamic>())).input(),
      scalingFactor: map['scalingFactor'] == null ? null : (map['scalingFactor'] as double).input(),
      sizingCriterion: map['sizingCriterion'] == null ? null : (map['sizingCriterion'] as String).input(),
    );
  }
}

