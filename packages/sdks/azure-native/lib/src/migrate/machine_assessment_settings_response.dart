// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_settings_response.dart';
import 'performance_data_response.dart';
import 'savings_settings_response.dart';
import 'vm_uptime_machine_assessments_v2_operation_response.dart';

/// Properties of an assessment.
class MachineAssessmentSettingsResponse {
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
  final pulumi.Input<BillingSettingsResponse>? billingSettings;
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
  final pulumi.Input<PerformanceDataResponse>? performanceData;
  /// Gets or sets the savings settings.
  final pulumi.Input<SavingsSettingsResponse>? savingsSettings;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String>? sizingCriterion;
  /// Gets or sets the duration for which the VMs are up in the on-premises
  /// environment.
  final pulumi.Input<VmUptimeMachineAssessmentsV2OperationResponse>? vmUptime;

  /// Creates a new [MachineAssessmentSettingsResponse].
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
  const MachineAssessmentSettingsResponse({
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
      'billingSettings': ?pulumi.Input.mapOptionalInputValue<BillingSettingsResponse, Map<String, dynamic>>(billingSettings, (value) => value.toMap()),
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'environmentType': ?environmentType,
      'linuxAzureHybridUseBenefit': ?linuxAzureHybridUseBenefit,
      'performanceData': ?pulumi.Input.mapOptionalInputValue<PerformanceDataResponse, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'savingsSettings': ?pulumi.Input.mapOptionalInputValue<SavingsSettingsResponse, Map<String, dynamic>>(savingsSettings, (value) => value.toMap()),
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'vmUptime': ?pulumi.Input.mapOptionalInputValue<VmUptimeMachineAssessmentsV2OperationResponse, Map<String, dynamic>>(vmUptime, (value) => value.toMap()),
    };
  }

  factory MachineAssessmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MachineAssessmentSettingsResponse(
      azureDiskTypes: (() { final guardedValue = map['azureDiskTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      azureHybridUseBenefit: (() { final guardedValue = map['azureHybridUseBenefit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azurePricingTier: (() { final guardedValue = map['azurePricingTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureSecurityOfferingType: (() { final guardedValue = map['azureSecurityOfferingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureStorageRedundancy: (() { final guardedValue = map['azureStorageRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureVmFamilies: (() { final guardedValue = map['azureVmFamilies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      azureVmSecurityOptions: (() { final guardedValue = map['azureVmSecurityOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      billingSettings: (() { final guardedValue = map['billingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      environmentType: (() { final guardedValue = map['environmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxAzureHybridUseBenefit: (() { final guardedValue = map['linuxAzureHybridUseBenefit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceData: (() { final guardedValue = map['performanceData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerformanceDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      savingsSettings: (() { final guardedValue = map['savingsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SavingsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      sizingCriterion: (() { final guardedValue = map['sizingCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmUptime: (() { final guardedValue = map['vmUptime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmUptimeMachineAssessmentsV2OperationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
