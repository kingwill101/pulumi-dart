// ignore_for_file: unused_element, unnecessary_cast

import 'app_svc_container_settings.dart';
import 'app_svc_native_settings.dart';
import 'billing_settings.dart';
import 'performance_data.dart';
import 'savings_settings.dart';

/// Web app assessment settings class.
class WebAppAssessmentSettings {
  /// App Service container settings.
  final AppSvcContainerSettings appSvcContainerSettings;
  /// App Service native settings.
  final AppSvcNativeSettings appSvcNativeSettings;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final String? azureLocation;
  /// Azure security offering type.
  final String azureSecurityOfferingType;
  /// Gets or sets the billing settings.
  final BillingSettings? billingSettings;
  /// Currency in which prices should be reported.
  final String? currency;
  /// Custom discount percentage.
  final double? discountPercentage;
  /// Gets or sets user configurable setting to display the environment type.
  final String? environmentType;
  /// Gets or sets the performance data.
  final PerformanceData? performanceData;
  /// Gets or sets the savings settings.
  final SavingsSettings? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final double? scalingFactor;
  /// Assessment sizing criterion.
  final String? sizingCriterion;

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
      'appSvcContainerSettings': appSvcContainerSettings.toMap(),
      'appSvcNativeSettings': appSvcNativeSettings.toMap(),
      'azureLocation': ?azureLocation,
      'azureSecurityOfferingType': azureSecurityOfferingType,
      'billingSettings': ?billingSettings == null ? null : billingSettings!.toMap(),
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'environmentType': ?environmentType,
      'performanceData': ?performanceData == null ? null : performanceData!.toMap(),
      'savingsSettings': ?savingsSettings == null ? null : savingsSettings!.toMap(),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
    };
  }

  factory WebAppAssessmentSettings.fromMap(Map<String, dynamic> map) {
    return WebAppAssessmentSettings(
      appSvcContainerSettings: AppSvcContainerSettings.fromMap((map['appSvcContainerSettings'] as Map).cast<String, dynamic>()),
      appSvcNativeSettings: AppSvcNativeSettings.fromMap((map['appSvcNativeSettings'] as Map).cast<String, dynamic>()),
      azureLocation: map['azureLocation'] == null ? null : map['azureLocation'] as String,
      azureSecurityOfferingType: map['azureSecurityOfferingType'] as String,
      billingSettings: map['billingSettings'] == null ? null : BillingSettings.fromMap((map['billingSettings'] as Map).cast<String, dynamic>()),
      currency: map['currency'] == null ? null : map['currency'] as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      environmentType: map['environmentType'] == null ? null : map['environmentType'] as String,
      performanceData: map['performanceData'] == null ? null : PerformanceData.fromMap((map['performanceData'] as Map).cast<String, dynamic>()),
      savingsSettings: map['savingsSettings'] == null ? null : SavingsSettings.fromMap((map['savingsSettings'] as Map).cast<String, dynamic>()),
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
      sizingCriterion: map['sizingCriterion'] == null ? null : map['sizingCriterion'] as String,
    );
  }
}

