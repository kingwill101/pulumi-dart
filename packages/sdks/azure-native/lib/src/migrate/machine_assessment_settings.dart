// ignore_for_file: unused_element, unnecessary_cast

import 'billing_settings.dart';
import 'performance_data.dart';
import 'savings_settings.dart';
import 'vm_uptime.dart';

/// Properties of an assessment.
class MachineAssessmentSettings {
  /// The disk type for the assessment.
  final List<String>? azureDiskTypes;
  /// Gets or sets the user configurable setting to display the azure hybrid use
  /// benefit.
  final String? azureHybridUseBenefit;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final String? azureLocation;
  /// Gets or sets Azure Pricing Tier - Free, Basic, etc.
  final String? azurePricingTier;
  /// The azure security offering type.
  final String? azureSecurityOfferingType;
  /// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  final String? azureStorageRedundancy;
  /// Gets or sets the Azure VM families.
  final List<String>? azureVmFamilies;
  /// Gets or sets the Azure VM security options.
  final List<String>? azureVmSecurityOptions;
  /// Gets or sets the billing settings.
  final BillingSettings? billingSettings;
  /// Currency in which prices should be reported.
  final String? currency;
  /// Custom discount percentage.
  final double? discountPercentage;
  /// Gets or sets user configurable setting to display the environment type.
  final String? environmentType;
  /// Gets or sets the user configurable setting to display the linux azure hybrid use
  /// benefit.
  final String? linuxAzureHybridUseBenefit;
  /// Gets or sets the performance data.
  final PerformanceData? performanceData;
  /// Gets or sets the savings settings.
  final SavingsSettings? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final double? scalingFactor;
  /// Assessment sizing criterion.
  final String? sizingCriterion;
  /// Gets or sets the duration for which the VMs are up in the on-premises
  /// environment.
  final VmUptime? vmUptime;

  /// Creates a new [MachineAssessmentSettings].
  /// [azureDiskTypes] The disk type for the assessment.
  /// [azureHybridUseBenefit] Gets or sets the user configurable setting to display the azure hybrid use
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azurePricingTier] Gets or sets Azure Pricing Tier - Free, Basic, etc.
  /// [azureSecurityOfferingType] The azure security offering type.
  /// [azureStorageRedundancy] Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  /// [azureVmFamilies] Gets or sets the Azure VM families.
  /// [azureVmSecurityOptions] Gets or sets the Azure VM security options.
  /// [billingSettings] Gets or sets the billing settings.
  /// [currency] Currency in which prices should be reported.
  /// [discountPercentage] Custom discount percentage.
  /// [environmentType] Gets or sets user configurable setting to display the environment type.
  /// [linuxAzureHybridUseBenefit] Gets or sets the user configurable setting to display the linux azure hybrid use
  /// [performanceData] Gets or sets the performance data.
  /// [savingsSettings] Gets or sets the savings settings.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [sizingCriterion] Assessment sizing criterion.
  /// [vmUptime] Gets or sets the duration for which the VMs are up in the on-premises
  MachineAssessmentSettings({
    this.azureDiskTypes,
    this.azureHybridUseBenefit,
    this.azureLocation,
    this.azurePricingTier,
    this.azureSecurityOfferingType,
    this.azureStorageRedundancy,
    this.azureVmFamilies,
    this.azureVmSecurityOptions,
    this.billingSettings,
    this.currency,
    this.discountPercentage,
    this.environmentType,
    this.linuxAzureHybridUseBenefit,
    this.performanceData,
    this.savingsSettings,
    this.scalingFactor,
    this.sizingCriterion,
    this.vmUptime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDiskTypes': ?azureDiskTypes,
      'azureHybridUseBenefit': ?azureHybridUseBenefit,
      'azureLocation': ?azureLocation,
      'azurePricingTier': ?azurePricingTier,
      'azureSecurityOfferingType': ?azureSecurityOfferingType,
      'azureStorageRedundancy': ?azureStorageRedundancy,
      'azureVmFamilies': ?azureVmFamilies,
      'azureVmSecurityOptions': ?azureVmSecurityOptions,
      'billingSettings': ?billingSettings == null ? null : billingSettings!.toMap(),
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'environmentType': ?environmentType,
      'linuxAzureHybridUseBenefit': ?linuxAzureHybridUseBenefit,
      'performanceData': ?performanceData == null ? null : performanceData!.toMap(),
      'savingsSettings': ?savingsSettings == null ? null : savingsSettings!.toMap(),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'vmUptime': ?vmUptime == null ? null : vmUptime!.toMap(),
    };
  }

  factory MachineAssessmentSettings.fromMap(Map<String, dynamic> map) {
    return MachineAssessmentSettings(
      azureDiskTypes: map['azureDiskTypes'] == null ? null : (map['azureDiskTypes'] as List).cast<String>(),
      azureHybridUseBenefit: map['azureHybridUseBenefit'] == null ? null : map['azureHybridUseBenefit'] as String,
      azureLocation: map['azureLocation'] == null ? null : map['azureLocation'] as String,
      azurePricingTier: map['azurePricingTier'] == null ? null : map['azurePricingTier'] as String,
      azureSecurityOfferingType: map['azureSecurityOfferingType'] == null ? null : map['azureSecurityOfferingType'] as String,
      azureStorageRedundancy: map['azureStorageRedundancy'] == null ? null : map['azureStorageRedundancy'] as String,
      azureVmFamilies: map['azureVmFamilies'] == null ? null : (map['azureVmFamilies'] as List).cast<String>(),
      azureVmSecurityOptions: map['azureVmSecurityOptions'] == null ? null : (map['azureVmSecurityOptions'] as List).cast<String>(),
      billingSettings: map['billingSettings'] == null ? null : BillingSettings.fromMap((map['billingSettings'] as Map).cast<String, dynamic>()),
      currency: map['currency'] == null ? null : map['currency'] as String,
      discountPercentage: map['discountPercentage'] == null ? null : map['discountPercentage'] as double,
      environmentType: map['environmentType'] == null ? null : map['environmentType'] as String,
      linuxAzureHybridUseBenefit: map['linuxAzureHybridUseBenefit'] == null ? null : map['linuxAzureHybridUseBenefit'] as String,
      performanceData: map['performanceData'] == null ? null : PerformanceData.fromMap((map['performanceData'] as Map).cast<String, dynamic>()),
      savingsSettings: map['savingsSettings'] == null ? null : SavingsSettings.fromMap((map['savingsSettings'] as Map).cast<String, dynamic>()),
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
      sizingCriterion: map['sizingCriterion'] == null ? null : map['sizingCriterion'] as String,
      vmUptime: map['vmUptime'] == null ? null : VmUptime.fromMap((map['vmUptime'] as Map).cast<String, dynamic>()),
    );
  }
}

