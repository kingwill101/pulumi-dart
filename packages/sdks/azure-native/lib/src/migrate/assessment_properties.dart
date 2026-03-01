// ignore_for_file: unused_element, unnecessary_cast

import 'vm_uptime.dart';

/// Properties of an assessment.
class AssessmentProperties {
  /// Storage type selected for this disk.
  final String azureDiskType;
  /// AHUB discount on windows virtual machines.
  final String azureHybridUseBenefit;
  /// Target Azure location for which the machines should be assessed. These enums are the same as used by Compute API.
  final String azureLocation;
  /// Offer code according to which cost estimation is done.
  final String azureOfferCode;
  /// Pricing tier for Size evaluation.
  final String azurePricingTier;
  /// Storage Redundancy type offered by Azure.
  final String azureStorageRedundancy;
  /// List of azure VM families.
  final List<String> azureVmFamilies;
  /// Currency to report prices in.
  final String currency;
  /// Custom discount percentage to be applied on final costs. Can be in the range [0, 100].
  final double discountPercentage;
  /// Percentile of performance data used to recommend Azure size.
  final String percentile;
  /// Azure reserved instance.
  final String reservedInstance;
  /// Scaling factor used over utilization data to add a performance buffer for new machines to be created in Azure. Min Value = 1.0, Max value = 1.9, Default = 1.3.
  final double scalingFactor;
  /// Assessment sizing criterion.
  final String sizingCriterion;
  /// User configurable setting that describes the status of the assessment.
  final String stage;
  /// Time range of performance data used to recommend a size.
  final String timeRange;
  /// Specify the duration for which the VMs are up in the on-premises environment.
  final VmUptime vmUptime;

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
  AssessmentProperties({
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
      'vmUptime': vmUptime.toMap(),
    };
  }

  factory AssessmentProperties.fromMap(Map<String, dynamic> map) {
    return AssessmentProperties(
      azureDiskType: map['azureDiskType'] as String,
      azureHybridUseBenefit: map['azureHybridUseBenefit'] as String,
      azureLocation: map['azureLocation'] as String,
      azureOfferCode: map['azureOfferCode'] as String,
      azurePricingTier: map['azurePricingTier'] as String,
      azureStorageRedundancy: map['azureStorageRedundancy'] as String,
      azureVmFamilies: (map['azureVmFamilies'] as List).cast<String>(),
      currency: map['currency'] as String,
      discountPercentage: map['discountPercentage'] as double,
      percentile: map['percentile'] as String,
      reservedInstance: map['reservedInstance'] as String,
      scalingFactor: map['scalingFactor'] as double,
      sizingCriterion: map['sizingCriterion'] as String,
      stage: map['stage'] as String,
      timeRange: map['timeRange'] as String,
      vmUptime: VmUptime.fromMap((map['vmUptime'] as Map).cast<String, dynamic>()),
    );
  }
}

