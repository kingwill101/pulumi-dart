// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_svc_container_settings_response.dart';
import 'app_svc_native_settings_response.dart';
import 'billing_settings_response.dart';
import 'performance_data_response.dart';
import 'savings_settings_response.dart';

/// Web app assessment settings class.
class WebAppAssessmentSettingsResponse {
  /// App Service container settings.
  final pulumi.Input<AppSvcContainerSettingsResponse> appSvcContainerSettings;
  /// App Service native settings.
  final pulumi.Input<AppSvcNativeSettingsResponse> appSvcNativeSettings;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String>? azureLocation;
  /// Azure security offering type.
  final pulumi.Input<String> azureSecurityOfferingType;
  /// Gets or sets the billing settings.
  final pulumi.Input<BillingSettingsResponse>? billingSettings;
  /// Currency in which prices should be reported.
  final pulumi.Input<String>? currency;
  /// Custom discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<String>? environmentType;
  /// Gets or sets the performance data.
  final pulumi.Input<PerformanceDataResponse>? performanceData;
  /// Gets or sets the savings settings.
  final pulumi.Input<SavingsSettingsResponse>? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String>? sizingCriterion;

  /// Creates a new [WebAppAssessmentSettingsResponse].
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
  WebAppAssessmentSettingsResponse({
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
      'appSvcContainerSettings': pulumi.Input.mapInputValue<AppSvcContainerSettingsResponse, Map<String, dynamic>>(appSvcContainerSettings, (value) => value.toMap()),
      'appSvcNativeSettings': pulumi.Input.mapInputValue<AppSvcNativeSettingsResponse, Map<String, dynamic>>(appSvcNativeSettings, (value) => value.toMap()),
      'azureLocation': ?azureLocation,
      'azureSecurityOfferingType': azureSecurityOfferingType,
      'billingSettings': ?pulumi.Input.mapOptionalInputValue<BillingSettingsResponse, Map<String, dynamic>>(billingSettings, (value) => value.toMap()),
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'environmentType': ?environmentType,
      'performanceData': ?pulumi.Input.mapOptionalInputValue<PerformanceDataResponse, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'savingsSettings': ?pulumi.Input.mapOptionalInputValue<SavingsSettingsResponse, Map<String, dynamic>>(savingsSettings, (value) => value.toMap()),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
    };
  }

  factory WebAppAssessmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return WebAppAssessmentSettingsResponse(
      appSvcContainerSettings: (AppSvcContainerSettingsResponse.fromMap((map['appSvcContainerSettings'] as Map).cast<String, dynamic>())).input(),
      appSvcNativeSettings: (AppSvcNativeSettingsResponse.fromMap((map['appSvcNativeSettings'] as Map).cast<String, dynamic>())).input(),
      azureLocation: map['azureLocation'] == null ? null : (map['azureLocation'] as String).input(),
      azureSecurityOfferingType: (map['azureSecurityOfferingType'] as String).input(),
      billingSettings: map['billingSettings'] == null ? null : (BillingSettingsResponse.fromMap((map['billingSettings'] as Map).cast<String, dynamic>())).input(),
      currency: map['currency'] == null ? null : (map['currency'] as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage'] as double).input(),
      environmentType: map['environmentType'] == null ? null : (map['environmentType'] as String).input(),
      performanceData: map['performanceData'] == null ? null : (PerformanceDataResponse.fromMap((map['performanceData'] as Map).cast<String, dynamic>())).input(),
      savingsSettings: map['savingsSettings'] == null ? null : (SavingsSettingsResponse.fromMap((map['savingsSettings'] as Map).cast<String, dynamic>())).input(),
      scalingFactor: map['scalingFactor'] == null ? null : (map['scalingFactor'] as double).input(),
      sizingCriterion: map['sizingCriterion'] == null ? null : (map['sizingCriterion'] as String).input(),
    );
  }
}

