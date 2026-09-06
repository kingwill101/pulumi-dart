// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_settings.dart';
import 'performance_data.dart';
import 'savings_settings.dart';
import 'vm_uptime.dart';

/// Properties of an assessment.
class MachineAssessmentSettings {
  /// The disk type for the assessment.
  final pulumi.Input<List<dynamic>?>? azureDiskTypes;
  /// Gets or sets the user configurable setting to display the azure hybrid use
  /// benefit.
  final pulumi.Input<dynamic>? azureHybridUseBenefit;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String?>? azureLocation;
  /// Gets or sets Azure Pricing Tier - Free, Basic, etc.
  final pulumi.Input<dynamic>? azurePricingTier;
  /// The azure security offering type.
  final pulumi.Input<dynamic>? azureSecurityOfferingType;
  /// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  final pulumi.Input<dynamic>? azureStorageRedundancy;
  /// Gets or sets the Azure VM families.
  final pulumi.Input<List<dynamic>?>? azureVmFamilies;
  /// Gets or sets the Azure VM security options.
  final pulumi.Input<List<dynamic>?>? azureVmSecurityOptions;
  /// Gets or sets the billing settings.
  final pulumi.Input<BillingSettings?>? billingSettings;
  /// Currency in which prices should be reported.
  final pulumi.Input<dynamic>? currency;
  /// Custom discount percentage.
  final pulumi.Input<double?>? discountPercentage;
  /// Gets or sets user configurable setting to display the environment type.
  final pulumi.Input<dynamic>? environmentType;
  /// Gets or sets the user configurable setting to display the linux azure hybrid use
  /// benefit.
  final pulumi.Input<dynamic>? linuxAzureHybridUseBenefit;
  /// Gets or sets the performance data.
  final pulumi.Input<PerformanceData?>? performanceData;
  /// Gets or sets the savings settings.
  final pulumi.Input<SavingsSettings?>? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double?>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<dynamic>? sizingCriterion;
  /// Gets or sets the duration for which the VMs are up in the on-premises
  /// environment.
  final pulumi.Input<VmUptime?>? vmUptime;

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
  const MachineAssessmentSettings({
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
      azureDiskTypes: (() { final guardedValue = map['azureDiskTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      azureHybridUseBenefit: (() { final guardedValue = map['azureHybridUseBenefit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azurePricingTier: (() { final guardedValue = map['azurePricingTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureSecurityOfferingType: (() { final guardedValue = map['azureSecurityOfferingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureStorageRedundancy: (() { final guardedValue = map['azureStorageRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureVmFamilies: (() { final guardedValue = map['azureVmFamilies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      azureVmSecurityOptions: (() { final guardedValue = map['azureVmSecurityOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      billingSettings: (() { final guardedValue = map['billingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      environmentType: (() { final guardedValue = map['environmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      linuxAzureHybridUseBenefit: (() { final guardedValue = map['linuxAzureHybridUseBenefit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      performanceData: (() { final guardedValue = map['performanceData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerformanceData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      savingsSettings: (() { final guardedValue = map['savingsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SavingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sizingCriterion: (() { final guardedValue = map['sizingCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      vmUptime: (() { final guardedValue = map['vmUptime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmUptime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
