// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_uptime.dart';

/// Properties of an assessment.
class AssessmentProperties {
  /// Storage type selected for this disk.
  final pulumi.Input<String> azureDiskType;
  /// AHUB discount on windows virtual machines.
  final pulumi.Input<String> azureHybridUseBenefit;
  /// Target Azure location for which the machines should be assessed. These enums are the same as used by Compute API.
  final pulumi.Input<String> azureLocation;
  /// Offer code according to which cost estimation is done.
  final pulumi.Input<String> azureOfferCode;
  /// Pricing tier for Size evaluation.
  final pulumi.Input<String> azurePricingTier;
  /// Storage Redundancy type offered by Azure.
  final pulumi.Input<String> azureStorageRedundancy;
  /// List of azure VM families.
  final pulumi.Input<List<String>> azureVmFamilies;
  /// Currency to report prices in.
  final pulumi.Input<String> currency;
  /// Custom discount percentage to be applied on final costs. Can be in the range [0, 100].
  final pulumi.Input<double> discountPercentage;
  /// Percentile of performance data used to recommend Azure size.
  final pulumi.Input<String> percentile;
  /// Azure reserved instance.
  final pulumi.Input<String> reservedInstance;
  /// Scaling factor used over utilization data to add a performance buffer for new machines to be created in Azure. Min Value = 1.0, Max value = 1.9, Default = 1.3.
  final pulumi.Input<double> scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String> sizingCriterion;
  /// User configurable setting that describes the status of the assessment.
  final pulumi.Input<String> stage;
  /// Time range of performance data used to recommend a size.
  final pulumi.Input<String> timeRange;
  /// Specify the duration for which the VMs are up in the on-premises environment.
  final pulumi.Input<VmUptime> vmUptime;

  /// Creates a new [AssessmentProperties].
  /// [azureDiskType] Storage type selected for this disk.
  /// [azureHybridUseBenefit] AHUB discount on windows virtual machines.
  /// [azureLocation] Target Azure location for which the machines should be assessed. These enums are the same as used by Compute API.
  /// [azureOfferCode] Offer code according to which cost estimation is done.
  /// [azurePricingTier] Pricing tier for Size evaluation.
  /// [azureStorageRedundancy] Storage Redundancy type offered by Azure.
  /// [azureVmFamilies] List of azure VM families.
  /// [currency] Currency to report prices in.
  /// [discountPercentage] Custom discount percentage to be applied on final costs. Can be in the range [0, 100].
  /// [percentile] Percentile of performance data used to recommend Azure size.
  /// [reservedInstance] Azure reserved instance.
  /// [scalingFactor] Scaling factor used over utilization data to add a performance buffer for new machines to be created in Azure. Min Value = 1.0, Max value = 1.9, Default = 1.3.
  /// [sizingCriterion] Assessment sizing criterion.
  /// [stage] User configurable setting that describes the status of the assessment.
  /// [timeRange] Time range of performance data used to recommend a size.
  /// [vmUptime] Specify the duration for which the VMs are up in the on-premises environment.
  const AssessmentProperties({
    required this.azureDiskType,
    required this.azureHybridUseBenefit,
    required this.azureLocation,
    required this.azureOfferCode,
    required this.azurePricingTier,
    required this.azureStorageRedundancy,
    required this.azureVmFamilies,
    required this.currency,
    required this.discountPercentage,
    required this.percentile,
    required this.reservedInstance,
    required this.scalingFactor,
    required this.sizingCriterion,
    required this.stage,
    required this.timeRange,
    required this.vmUptime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDiskType': azureDiskType,
      'azureHybridUseBenefit': azureHybridUseBenefit,
      'azureLocation': azureLocation,
      'azureOfferCode': azureOfferCode,
      'azurePricingTier': azurePricingTier,
      'azureStorageRedundancy': azureStorageRedundancy,
      'azureVmFamilies': azureVmFamilies,
      'currency': currency,
      'discountPercentage': discountPercentage,
      'percentile': percentile,
      'reservedInstance': reservedInstance,
      'scalingFactor': scalingFactor,
      'sizingCriterion': sizingCriterion,
      'stage': stage,
      'timeRange': timeRange,
      'vmUptime': pulumi.Input.mapInputValue<VmUptime, Map<String, dynamic>>(vmUptime, (value) => value.toMap()),
    };
  }

  factory AssessmentProperties.fromMap(Map<String, dynamic> map) {
    return AssessmentProperties(
      azureDiskType: pulumi.Input.fromValue(map['azureDiskType'] as String),
      azureHybridUseBenefit: pulumi.Input.fromValue(map['azureHybridUseBenefit'] as String),
      azureLocation: pulumi.Input.fromValue(map['azureLocation'] as String),
      azureOfferCode: pulumi.Input.fromValue(map['azureOfferCode'] as String),
      azurePricingTier: pulumi.Input.fromValue(map['azurePricingTier'] as String),
      azureStorageRedundancy: pulumi.Input.fromValue(map['azureStorageRedundancy'] as String),
      azureVmFamilies: pulumi.Input.fromValue((map['azureVmFamilies'] as List).cast<String>()),
      currency: pulumi.Input.fromValue(map['currency'] as String),
      discountPercentage: pulumi.Input.fromValue(map['discountPercentage'] as double),
      percentile: pulumi.Input.fromValue(map['percentile'] as String),
      reservedInstance: pulumi.Input.fromValue(map['reservedInstance'] as String),
      scalingFactor: pulumi.Input.fromValue(map['scalingFactor'] as double),
      sizingCriterion: pulumi.Input.fromValue(map['sizingCriterion'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      timeRange: pulumi.Input.fromValue(map['timeRange'] as String),
      vmUptime: pulumi.Input.fromValue(VmUptime.fromMap((map['vmUptime']! as Map).cast<String, dynamic>())),
    );
  }
}

