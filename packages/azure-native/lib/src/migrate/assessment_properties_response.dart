// ignore_for_file: unused_element, unnecessary_cast

import 'vm_uptime_response.dart';

/// Properties of an assessment.
class AssessmentPropertiesResponse {
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
  /// Confidence rating percentage for assessment. Can be in the range [0, 100].
  final double confidenceRatingInPercentage;
  /// Time when this project was created. Date-Time represented in ISO-8601 format.
  final String createdTimestamp;
  /// Currency to report prices in.
  final String currency;
  /// Custom discount percentage to be applied on final costs. Can be in the range [0, 100].
  final double discountPercentage;
  /// Enterprise agreement subscription arm id.
  final String eaSubscriptionId;
  /// Monthly network cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final double monthlyBandwidthCost;
  /// Monthly compute cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final double monthlyComputeCost;
  /// Monthly premium storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final double monthlyPremiumStorageCost;
  /// Monthly standard SSD storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final double monthlyStandardSSDStorageCost;
  /// Monthly storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final double monthlyStorageCost;
  /// Number of assessed machines part of this assessment.
  final int numberOfMachines;
  /// Percentile of performance data used to recommend Azure size.
  final String percentile;
  /// End time to consider performance data for assessment
  final String perfDataEndTime;
  /// Start time to consider performance data for assessment
  final String perfDataStartTime;
  /// Time when the Azure Prices were queried. Date-Time represented in ISO-8601 format.
  final String pricesTimestamp;
  /// Azure reserved instance.
  final String reservedInstance;
  /// Scaling factor used over utilization data to add a performance buffer for new machines to be created in Azure. Min Value = 1.0, Max value = 1.9, Default = 1.3.
  final double scalingFactor;
  /// Assessment sizing criterion.
  final String sizingCriterion;
  /// User configurable setting that describes the status of the assessment.
  final String stage;
  /// Whether the assessment has been created and is valid.
  final String status;
  /// Time range of performance data used to recommend a size.
  final String timeRange;
  /// Time when this project was last updated. Date-Time represented in ISO-8601 format.
  final String updatedTimestamp;
  /// Specify the duration for which the VMs are up in the on-premises environment.
  final VmUptimeResponse vmUptime;

  /// Creates a new [AssessmentPropertiesResponse].
  /// [azureDiskType] Storage type selected for this disk.
  /// [azureHybridUseBenefit] AHUB discount on windows virtual machines.
  /// [azureLocation] Target Azure location for which the machines should be assessed. These enums are the same as used by Compute API.
  /// [azureOfferCode] Offer code according to which cost estimation is done.
  /// [azurePricingTier] Pricing tier for Size evaluation.
  /// [azureStorageRedundancy] Storage Redundancy type offered by Azure.
  /// [azureVmFamilies] List of azure VM families.
  /// [confidenceRatingInPercentage] Confidence rating percentage for assessment. Can be in the range [0, 100].
  /// [createdTimestamp] Time when this project was created. Date-Time represented in ISO-8601 format.
  /// [currency] Currency to report prices in.
  /// [discountPercentage] Custom discount percentage to be applied on final costs. Can be in the range [0, 100].
  /// [eaSubscriptionId] Enterprise agreement subscription arm id.
  /// [monthlyBandwidthCost] Monthly network cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  /// [monthlyComputeCost] Monthly compute cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  /// [monthlyPremiumStorageCost] Monthly premium storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  /// [monthlyStandardSSDStorageCost] Monthly standard SSD storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  /// [monthlyStorageCost] Monthly storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  /// [numberOfMachines] Number of assessed machines part of this assessment.
  /// [percentile] Percentile of performance data used to recommend Azure size.
  /// [perfDataEndTime] End time to consider performance data for assessment
  /// [perfDataStartTime] Start time to consider performance data for assessment
  /// [pricesTimestamp] Time when the Azure Prices were queried. Date-Time represented in ISO-8601 format.
  /// [reservedInstance] Azure reserved instance.
  /// [scalingFactor] Scaling factor used over utilization data to add a performance buffer for new machines to be created in Azure. Min Value = 1.0, Max value = 1.9, Default = 1.3.
  /// [sizingCriterion] Assessment sizing criterion.
  /// [stage] User configurable setting that describes the status of the assessment.
  /// [status] Whether the assessment has been created and is valid.
  /// [timeRange] Time range of performance data used to recommend a size.
  /// [updatedTimestamp] Time when this project was last updated. Date-Time represented in ISO-8601 format.
  /// [vmUptime] Specify the duration for which the VMs are up in the on-premises environment.
  AssessmentPropertiesResponse({
    required this.azureDiskType,
    required this.azureHybridUseBenefit,
    required this.azureLocation,
    required this.azureOfferCode,
    required this.azurePricingTier,
    required this.azureStorageRedundancy,
    required this.azureVmFamilies,
    required this.confidenceRatingInPercentage,
    required this.createdTimestamp,
    required this.currency,
    required this.discountPercentage,
    required this.eaSubscriptionId,
    required this.monthlyBandwidthCost,
    required this.monthlyComputeCost,
    required this.monthlyPremiumStorageCost,
    required this.monthlyStandardSSDStorageCost,
    required this.monthlyStorageCost,
    required this.numberOfMachines,
    required this.percentile,
    required this.perfDataEndTime,
    required this.perfDataStartTime,
    required this.pricesTimestamp,
    required this.reservedInstance,
    required this.scalingFactor,
    required this.sizingCriterion,
    required this.stage,
    required this.status,
    required this.timeRange,
    required this.updatedTimestamp,
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
      'confidenceRatingInPercentage': confidenceRatingInPercentage,
      'createdTimestamp': createdTimestamp,
      'currency': currency,
      'discountPercentage': discountPercentage,
      'eaSubscriptionId': eaSubscriptionId,
      'monthlyBandwidthCost': monthlyBandwidthCost,
      'monthlyComputeCost': monthlyComputeCost,
      'monthlyPremiumStorageCost': monthlyPremiumStorageCost,
      'monthlyStandardSSDStorageCost': monthlyStandardSSDStorageCost,
      'monthlyStorageCost': monthlyStorageCost,
      'numberOfMachines': numberOfMachines,
      'percentile': percentile,
      'perfDataEndTime': perfDataEndTime,
      'perfDataStartTime': perfDataStartTime,
      'pricesTimestamp': pricesTimestamp,
      'reservedInstance': reservedInstance,
      'scalingFactor': scalingFactor,
      'sizingCriterion': sizingCriterion,
      'stage': stage,
      'status': status,
      'timeRange': timeRange,
      'updatedTimestamp': updatedTimestamp,
      'vmUptime': vmUptime.toMap(),
    };
  }

  factory AssessmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentPropertiesResponse(
      azureDiskType: map['azureDiskType'] as String,
      azureHybridUseBenefit: map['azureHybridUseBenefit'] as String,
      azureLocation: map['azureLocation'] as String,
      azureOfferCode: map['azureOfferCode'] as String,
      azurePricingTier: map['azurePricingTier'] as String,
      azureStorageRedundancy: map['azureStorageRedundancy'] as String,
      azureVmFamilies: (map['azureVmFamilies'] as List).cast<String>(),
      confidenceRatingInPercentage: map['confidenceRatingInPercentage'] as double,
      createdTimestamp: map['createdTimestamp'] as String,
      currency: map['currency'] as String,
      discountPercentage: map['discountPercentage'] as double,
      eaSubscriptionId: map['eaSubscriptionId'] as String,
      monthlyBandwidthCost: map['monthlyBandwidthCost'] as double,
      monthlyComputeCost: map['monthlyComputeCost'] as double,
      monthlyPremiumStorageCost: map['monthlyPremiumStorageCost'] as double,
      monthlyStandardSSDStorageCost: map['monthlyStandardSSDStorageCost'] as double,
      monthlyStorageCost: map['monthlyStorageCost'] as double,
      numberOfMachines: map['numberOfMachines'] as int,
      percentile: map['percentile'] as String,
      perfDataEndTime: map['perfDataEndTime'] as String,
      perfDataStartTime: map['perfDataStartTime'] as String,
      pricesTimestamp: map['pricesTimestamp'] as String,
      reservedInstance: map['reservedInstance'] as String,
      scalingFactor: map['scalingFactor'] as double,
      sizingCriterion: map['sizingCriterion'] as String,
      stage: map['stage'] as String,
      status: map['status'] as String,
      timeRange: map['timeRange'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
      vmUptime: VmUptimeResponse.fromMap((map['vmUptime'] as Map).cast<String, dynamic>()),
    );
  }
}

