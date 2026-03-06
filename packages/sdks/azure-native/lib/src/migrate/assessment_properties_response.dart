// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_uptime_response.dart';

/// Properties of an assessment.
class AssessmentPropertiesResponse {
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
  /// Confidence rating percentage for assessment. Can be in the range [0, 100].
  final pulumi.Input<double> confidenceRatingInPercentage;
  /// Time when this project was created. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> createdTimestamp;
  /// Currency to report prices in.
  final pulumi.Input<String> currency;
  /// Custom discount percentage to be applied on final costs. Can be in the range [0, 100].
  final pulumi.Input<double> discountPercentage;
  /// Enterprise agreement subscription arm id.
  final pulumi.Input<String> eaSubscriptionId;
  /// Monthly network cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final pulumi.Input<double> monthlyBandwidthCost;
  /// Monthly compute cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final pulumi.Input<double> monthlyComputeCost;
  /// Monthly premium storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final pulumi.Input<double> monthlyPremiumStorageCost;
  /// Monthly standard SSD storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final pulumi.Input<double> monthlyStandardSSDStorageCost;
  /// Monthly storage cost estimate for the machines that are part of this assessment as a group, for a 31-day month.
  final pulumi.Input<double> monthlyStorageCost;
  /// Number of assessed machines part of this assessment.
  final pulumi.Input<int> numberOfMachines;
  /// Percentile of performance data used to recommend Azure size.
  final pulumi.Input<String> percentile;
  /// End time to consider performance data for assessment
  final pulumi.Input<String> perfDataEndTime;
  /// Start time to consider performance data for assessment
  final pulumi.Input<String> perfDataStartTime;
  /// Time when the Azure Prices were queried. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> pricesTimestamp;
  /// Azure reserved instance.
  final pulumi.Input<String> reservedInstance;
  /// Scaling factor used over utilization data to add a performance buffer for new machines to be created in Azure. Min Value = 1.0, Max value = 1.9, Default = 1.3.
  final pulumi.Input<double> scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String> sizingCriterion;
  /// User configurable setting that describes the status of the assessment.
  final pulumi.Input<String> stage;
  /// Whether the assessment has been created and is valid.
  final pulumi.Input<String> status;
  /// Time range of performance data used to recommend a size.
  final pulumi.Input<String> timeRange;
  /// Time when this project was last updated. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> updatedTimestamp;
  /// Specify the duration for which the VMs are up in the on-premises environment.
  final pulumi.Input<VmUptimeResponse> vmUptime;

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
  const AssessmentPropertiesResponse({
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
      'vmUptime': pulumi.Input.mapInputValue<VmUptimeResponse, Map<String, dynamic>>(vmUptime, (value) => value.toMap()),
    };
  }

  factory AssessmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentPropertiesResponse(
      azureDiskType: pulumi.Input.fromValue(map['azureDiskType'] as String),
      azureHybridUseBenefit: pulumi.Input.fromValue(map['azureHybridUseBenefit'] as String),
      azureLocation: pulumi.Input.fromValue(map['azureLocation'] as String),
      azureOfferCode: pulumi.Input.fromValue(map['azureOfferCode'] as String),
      azurePricingTier: pulumi.Input.fromValue(map['azurePricingTier'] as String),
      azureStorageRedundancy: pulumi.Input.fromValue(map['azureStorageRedundancy'] as String),
      azureVmFamilies: pulumi.Input.fromValue((map['azureVmFamilies'] as List).cast<String>()),
      confidenceRatingInPercentage: pulumi.Input.fromValue(map['confidenceRatingInPercentage'] as double),
      createdTimestamp: pulumi.Input.fromValue(map['createdTimestamp'] as String),
      currency: pulumi.Input.fromValue(map['currency'] as String),
      discountPercentage: pulumi.Input.fromValue(map['discountPercentage'] as double),
      eaSubscriptionId: pulumi.Input.fromValue(map['eaSubscriptionId'] as String),
      monthlyBandwidthCost: pulumi.Input.fromValue(map['monthlyBandwidthCost'] as double),
      monthlyComputeCost: pulumi.Input.fromValue(map['monthlyComputeCost'] as double),
      monthlyPremiumStorageCost: pulumi.Input.fromValue(map['monthlyPremiumStorageCost'] as double),
      monthlyStandardSSDStorageCost: pulumi.Input.fromValue(map['monthlyStandardSSDStorageCost'] as double),
      monthlyStorageCost: pulumi.Input.fromValue(map['monthlyStorageCost'] as double),
      numberOfMachines: pulumi.Input.fromValue(map['numberOfMachines'] as int),
      percentile: pulumi.Input.fromValue(map['percentile'] as String),
      perfDataEndTime: pulumi.Input.fromValue(map['perfDataEndTime'] as String),
      perfDataStartTime: pulumi.Input.fromValue(map['perfDataStartTime'] as String),
      pricesTimestamp: pulumi.Input.fromValue(map['pricesTimestamp'] as String),
      reservedInstance: pulumi.Input.fromValue(map['reservedInstance'] as String),
      scalingFactor: pulumi.Input.fromValue(map['scalingFactor'] as double),
      sizingCriterion: pulumi.Input.fromValue(map['sizingCriterion'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      timeRange: pulumi.Input.fromValue(map['timeRange'] as String),
      updatedTimestamp: pulumi.Input.fromValue(map['updatedTimestamp'] as String),
      vmUptime: pulumi.Input.fromValue(VmUptimeResponse.fromMap((map['vmUptime']! as Map).cast<String, dynamic>())),
    );
  }
}

