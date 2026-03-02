// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_settings.dart';
import 'performance_data.dart';
import 'savings_settings.dart';
import 'vm_uptime.dart';

/// Properties of an assessment.
class MachineAssessmentSettings {
  /// The disk type for the assessment.
  final pulumi.Input<List<String>>? azureDiskTypes;
  /// Gets or sets the user configurable setting to display the azure hybrid use
  /// benefit.
  final pulumi.Input<String>? azureHybridUseBenefit;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String>? azureLocation;
  /// Gets or sets Azure Pricing Tier - Free, Basic, etc.
  final pulumi.Input<String>? azurePricingTier;
  /// The azure security offering type.
  final pulumi.Input<String>? azureSecurityOfferingType;
  /// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  final pulumi.Input<String>? azureStorageRedundancy;
  /// Gets or sets the Azure VM families.
  final pulumi.Input<List<String>>? azureVmFamilies;
  /// Gets or sets the Azure VM security options.
  final pulumi.Input<List<String>>? azureVmSecurityOptions;
  /// Gets or sets the billing settings.
  final pulumi.Input<BillingSettings>? billingSettings;
  /// Currency in which prices should be reported.
  final pulumi.Input<String>? currency;
  /// Custom discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<String>? environmentType;
  /// Gets or sets the user configurable setting to display the linux azure hybrid use
  /// benefit.
  final pulumi.Input<String>? linuxAzureHybridUseBenefit;
  /// Gets or sets the performance data.
  final pulumi.Input<PerformanceData>? performanceData;
  /// Gets or sets the savings settings.
  final pulumi.Input<SavingsSettings>? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String>? sizingCriterion;
  /// Gets or sets the duration for which the VMs are up in the on-premises
  /// environment.
  final pulumi.Input<VmUptime>? vmUptime;

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
      'billingSettings': ?pulumi.Input.mapOptionalInputValue<BillingSettings, Map<String, dynamic>>(billingSettings, (value) => value.toMap()),
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'environmentType': ?environmentType,
      'linuxAzureHybridUseBenefit': ?linuxAzureHybridUseBenefit,
      'performanceData': ?pulumi.Input.mapOptionalInputValue<PerformanceData, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'savingsSettings': ?pulumi.Input.mapOptionalInputValue<SavingsSettings, Map<String, dynamic>>(savingsSettings, (value) => value.toMap()),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'vmUptime': ?pulumi.Input.mapOptionalInputValue<VmUptime, Map<String, dynamic>>(vmUptime, (value) => value.toMap()),
    };
  }

  factory MachineAssessmentSettings.fromMap(Map<String, dynamic> map) {
    return MachineAssessmentSettings(
      azureDiskTypes: map['azureDiskTypes'] == null ? null : ((map['azureDiskTypes'] as List).cast<String>()).input(),
      azureHybridUseBenefit: map['azureHybridUseBenefit'] == null ? null : (map['azureHybridUseBenefit'] as String).input(),
      azureLocation: map['azureLocation'] == null ? null : (map['azureLocation'] as String).input(),
      azurePricingTier: map['azurePricingTier'] == null ? null : (map['azurePricingTier'] as String).input(),
      azureSecurityOfferingType: map['azureSecurityOfferingType'] == null ? null : (map['azureSecurityOfferingType'] as String).input(),
      azureStorageRedundancy: map['azureStorageRedundancy'] == null ? null : (map['azureStorageRedundancy'] as String).input(),
      azureVmFamilies: map['azureVmFamilies'] == null ? null : ((map['azureVmFamilies'] as List).cast<String>()).input(),
      azureVmSecurityOptions: map['azureVmSecurityOptions'] == null ? null : ((map['azureVmSecurityOptions'] as List).cast<String>()).input(),
      billingSettings: map['billingSettings'] == null ? null : (BillingSettings.fromMap((map['billingSettings'] as Map).cast<String, dynamic>())).input(),
      currency: map['currency'] == null ? null : (map['currency'] as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage'] as double).input(),
      environmentType: map['environmentType'] == null ? null : (map['environmentType'] as String).input(),
      linuxAzureHybridUseBenefit: map['linuxAzureHybridUseBenefit'] == null ? null : (map['linuxAzureHybridUseBenefit'] as String).input(),
      performanceData: map['performanceData'] == null ? null : (PerformanceData.fromMap((map['performanceData'] as Map).cast<String, dynamic>())).input(),
      savingsSettings: map['savingsSettings'] == null ? null : (SavingsSettings.fromMap((map['savingsSettings'] as Map).cast<String, dynamic>())).input(),
      scalingFactor: map['scalingFactor'] == null ? null : (map['scalingFactor'] as double).input(),
      sizingCriterion: map['sizingCriterion'] == null ? null : (map['sizingCriterion'] as String).input(),
      vmUptime: map['vmUptime'] == null ? null : (VmUptime.fromMap((map['vmUptime'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

