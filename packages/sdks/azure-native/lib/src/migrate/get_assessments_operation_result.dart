// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_component_response.dart';
import 'system_data_response.dart';
import 'vm_uptime_response.dart';

/// Result data returned by getAssessmentsOperation.
class GetAssessmentsOperationResult {
  /// Gets or sets the assessment error summary.
  /// This is the number of
  /// machines affected by each type of error in this assessment.
  final Map<String, int> assessmentErrorSummary;

  /// Assessment type of the assessment.
  final String assessmentType;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Gets or sets the azure storage type. Premium, Standard etc.
  final List<String>? azureDiskTypes;

  /// Gets or sets the user configurable setting to display the azure hybrid use
  /// benefit.
  final String? azureHybridUseBenefit;

  /// Azure Location or Azure region where to which the machines will be migrated.
  final String? azureLocation;

  /// Azure Offer Code.
  final String? azureOfferCode;

  /// Gets or sets Azure Pricing Tier - Free, Basic, etc.
  final String? azurePricingTier;

  /// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  final String? azureStorageRedundancy;

  /// Gets or sets the Azure VM families.
  final List<String>? azureVmFamilies;

  /// Confidence Rating in Percentage.
  final double confidenceRatingInPercentage;

  /// Gets the collection of cost components.
  final List<CostComponentResponse> costComponents;

  /// Date and Time when assessment was created.
  final String createdTimestamp;

  /// Currency in which prices should be reported.
  final String? currency;

  /// Custom discount percentage.
  final double? discountPercentage;

  /// Gets the distribution by os name.
  final Map<String, int> distributionByOsName;

  /// Gets the distribution distribution of sqlInstances by service pack insight.
  final Map<String, int> distributionByServicePackInsight;

  /// Gets the distribution of sqlInstances by support status.
  final Map<String, int> distributionBySupportStatus;

  /// Gets or sets enterprise agreement subscription id.
  final String? eaSubscriptionId;

  /// Gets the group type for the assessment.
  final String groupType;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// Gets or sets the user configurable setting to display the linux azure hybrid use
  /// benefit.
  final String? linuxAzureHybridUseBenefit;

  /// Gets or sets the aggregate Bandwidth Cost for all machines in the assessment.
  final double monthlyBandwidthCost;

  /// Gets or sets the aggregate Compute Cost for all machines in the assessment.
  final double monthlyComputeCost;

  /// Gets or sets the aggregate premium storage cost for all machines in the
  /// assessment.
  final double monthlyPremiumStorageCost;

  /// Gets or sets the aggregate standard SSD storage cost for all the machines in
  /// the assessment.
  final double monthlyStandardSsdStorageCost;

  /// Gets or sets the aggregate Storage Cost for all machines in the assessment.
  final double monthlyStorageCost;

  /// Gets or sets the aggregate ultra storage cost for all machines in the
  /// assessment.
  final double monthlyUltraStorageCost;

  /// The name of the resource
  final String name;

  /// Gets or sets the Number of machines part of the assessment.
  final int numberOfMachines;

  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final String? percentile;

  /// Gets or sets the end time to consider performance data for assessment.
  final String? perfDataEndTime;

  /// Gets or sets the start time to consider performance data for assessment.
  final String? perfDataStartTime;

  /// Last time when rates were queried.
  final String pricesTimestamp;

  /// The status of the last operation.
  final String? provisioningState;

  /// Gets or sets the Azure Reserved Instance - 1-Year, 3-Year.
  final String? reservedInstance;

  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final double? scalingFactor;

  /// Schema version.
  final String schemaVersion;

  /// Assessment sizing criterion.
  final String? sizingCriterion;

  /// User configurable setting to display the Stage of Assessment.
  final String stage;

  /// Whether assessment is in valid state and all machines have been assessed.
  final String status;

  /// Gets or sets the Cloud suitability summary for all the machines in the
  /// assessment.
  final Map<String, int> suitabilitySummary;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final String? timeRange;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Date and Time when assessment was last updated.
  final String updatedTimestamp;

  /// Gets or sets the duration for which the VMs are up in the on-premises
  /// environment.
  final VmUptimeResponse? vmUptime;

  /// Creates a new [GetAssessmentsOperationResult].
  /// [assessmentErrorSummary] Gets or sets the assessment error summary.
  /// [assessmentType] Assessment type of the assessment.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureDiskTypes] Gets or sets the azure storage type. Premium, Standard etc.
  /// [azureHybridUseBenefit] Gets or sets the user configurable setting to display the azure hybrid use
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureOfferCode] Azure Offer Code.
  /// [azurePricingTier] Gets or sets Azure Pricing Tier - Free, Basic, etc.
  /// [azureStorageRedundancy] Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  /// [azureVmFamilies] Gets or sets the Azure VM families.
  /// [confidenceRatingInPercentage] Confidence Rating in Percentage.
  /// [costComponents] Gets the collection of cost components.
  /// [createdTimestamp] Date and Time when assessment was created.
  /// [currency] Currency in which prices should be reported.
  /// [discountPercentage] Custom discount percentage.
  /// [distributionByOsName] Gets the distribution by os name.
  /// [distributionByServicePackInsight] Gets the distribution distribution of sqlInstances by service pack insight.
  /// [distributionBySupportStatus] Gets the distribution of sqlInstances by support status.
  /// [eaSubscriptionId] Gets or sets enterprise agreement subscription id.
  /// [groupType] Gets the group type for the assessment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [linuxAzureHybridUseBenefit] Gets or sets the user configurable setting to display the linux azure hybrid use
  /// [monthlyBandwidthCost] Gets or sets the aggregate Bandwidth Cost for all machines in the assessment.
  /// [monthlyComputeCost] Gets or sets the aggregate Compute Cost for all machines in the assessment.
  /// [monthlyPremiumStorageCost] Gets or sets the aggregate premium storage cost for all machines in the
  /// [monthlyStandardSsdStorageCost] Gets or sets the aggregate standard SSD storage cost for all the machines in
  /// [monthlyStorageCost] Gets or sets the aggregate Storage Cost for all machines in the assessment.
  /// [monthlyUltraStorageCost] Gets or sets the aggregate ultra storage cost for all machines in the
  /// [name] The name of the resource
  /// [numberOfMachines] Gets or sets the Number of machines part of the assessment.
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [pricesTimestamp] Last time when rates were queried.
  /// [provisioningState] The status of the last operation.
  /// [reservedInstance] Gets or sets the Azure Reserved Instance - 1-Year, 3-Year.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [schemaVersion] Schema version.
  /// [sizingCriterion] Assessment sizing criterion.
  /// [stage] User configurable setting to display the Stage of Assessment.
  /// [status] Whether assessment is in valid state and all machines have been assessed.
  /// [suitabilitySummary] Gets or sets the Cloud suitability summary for all the machines in the
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Date and Time when assessment was last updated.
  /// [vmUptime] Gets or sets the duration for which the VMs are up in the on-premises
  GetAssessmentsOperationResult({
    required this.assessmentErrorSummary,
    required this.assessmentType,
    required this.azureApiVersion,
    this.azureDiskTypes,
    this.azureHybridUseBenefit,
    this.azureLocation,
    this.azureOfferCode,
    this.azurePricingTier,
    this.azureStorageRedundancy,
    this.azureVmFamilies,
    required this.confidenceRatingInPercentage,
    required this.costComponents,
    required this.createdTimestamp,
    this.currency,
    this.discountPercentage,
    required this.distributionByOsName,
    required this.distributionByServicePackInsight,
    required this.distributionBySupportStatus,
    this.eaSubscriptionId,
    required this.groupType,
    required this.id,
    this.linuxAzureHybridUseBenefit,
    required this.monthlyBandwidthCost,
    required this.monthlyComputeCost,
    required this.monthlyPremiumStorageCost,
    required this.monthlyStandardSsdStorageCost,
    required this.monthlyStorageCost,
    required this.monthlyUltraStorageCost,
    required this.name,
    required this.numberOfMachines,
    this.percentile,
    this.perfDataEndTime,
    this.perfDataStartTime,
    required this.pricesTimestamp,
    this.provisioningState,
    this.reservedInstance,
    this.scalingFactor,
    required this.schemaVersion,
    this.sizingCriterion,
    required this.stage,
    required this.status,
    required this.suitabilitySummary,
    required this.systemData,
    this.timeRange,
    required this.type,
    required this.updatedTimestamp,
    this.vmUptime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentErrorSummary': assessmentErrorSummary,
      'assessmentType': assessmentType,
      'azureApiVersion': azureApiVersion,
      'azureDiskTypes': ?azureDiskTypes,
      'azureHybridUseBenefit': ?azureHybridUseBenefit,
      'azureLocation': ?azureLocation,
      'azureOfferCode': ?azureOfferCode,
      'azurePricingTier': ?azurePricingTier,
      'azureStorageRedundancy': ?azureStorageRedundancy,
      'azureVmFamilies': ?azureVmFamilies,
      'confidenceRatingInPercentage': confidenceRatingInPercentage,
      'costComponents':
          pulumi.Input.encodeList<CostComponentResponse, Map<String, dynamic>>(
            costComponents,
            (value) => value.toMap(),
          ),
      'createdTimestamp': createdTimestamp,
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'distributionByOsName': distributionByOsName,
      'distributionByServicePackInsight': distributionByServicePackInsight,
      'distributionBySupportStatus': distributionBySupportStatus,
      'eaSubscriptionId': ?eaSubscriptionId,
      'groupType': groupType,
      'id': id,
      'linuxAzureHybridUseBenefit': ?linuxAzureHybridUseBenefit,
      'monthlyBandwidthCost': monthlyBandwidthCost,
      'monthlyComputeCost': monthlyComputeCost,
      'monthlyPremiumStorageCost': monthlyPremiumStorageCost,
      'monthlyStandardSsdStorageCost': monthlyStandardSsdStorageCost,
      'monthlyStorageCost': monthlyStorageCost,
      'monthlyUltraStorageCost': monthlyUltraStorageCost,
      'name': name,
      'numberOfMachines': numberOfMachines,
      'percentile': ?percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'pricesTimestamp': pricesTimestamp,
      'provisioningState': ?provisioningState,
      'reservedInstance': ?reservedInstance,
      'scalingFactor': ?scalingFactor,
      'schemaVersion': schemaVersion,
      'sizingCriterion': ?sizingCriterion,
      'stage': stage,
      'status': status,
      'suitabilitySummary': suitabilitySummary,
      'systemData': systemData.toMap(),
      'timeRange': ?timeRange,
      'type': type,
      'updatedTimestamp': updatedTimestamp,
      'vmUptime': ?vmUptime?.toMap(),
    };
  }

  factory GetAssessmentsOperationResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentsOperationResult(
      assessmentErrorSummary: (map['assessmentErrorSummary'] as Map)
          .cast<String, int>(),
      assessmentType: map['assessmentType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      azureDiskTypes: (() {
        final guardedValue = map['azureDiskTypes'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      azureHybridUseBenefit: (() {
        final guardedValue = map['azureHybridUseBenefit'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureLocation: (() {
        final guardedValue = map['azureLocation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureOfferCode: (() {
        final guardedValue = map['azureOfferCode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azurePricingTier: (() {
        final guardedValue = map['azurePricingTier'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureStorageRedundancy: (() {
        final guardedValue = map['azureStorageRedundancy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureVmFamilies: (() {
        final guardedValue = map['azureVmFamilies'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      confidenceRatingInPercentage:
          map['confidenceRatingInPercentage'] as double,
      costComponents: pulumi.Input.decodeList<CostComponentResponse>(
        map['costComponents']!,
        (value) => CostComponentResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      createdTimestamp: map['createdTimestamp'] as String,
      currency: (() {
        final guardedValue = map['currency'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      discountPercentage: (() {
        final guardedValue = map['discountPercentage'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      distributionByOsName: (map['distributionByOsName'] as Map)
          .cast<String, int>(),
      distributionByServicePackInsight:
          (map['distributionByServicePackInsight'] as Map).cast<String, int>(),
      distributionBySupportStatus: (map['distributionBySupportStatus'] as Map)
          .cast<String, int>(),
      eaSubscriptionId: (() {
        final guardedValue = map['eaSubscriptionId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groupType: map['groupType'] as String,
      id: map['id'] as String,
      linuxAzureHybridUseBenefit: (() {
        final guardedValue = map['linuxAzureHybridUseBenefit'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      monthlyBandwidthCost: map['monthlyBandwidthCost'] as double,
      monthlyComputeCost: map['monthlyComputeCost'] as double,
      monthlyPremiumStorageCost: map['monthlyPremiumStorageCost'] as double,
      monthlyStandardSsdStorageCost:
          map['monthlyStandardSsdStorageCost'] as double,
      monthlyStorageCost: map['monthlyStorageCost'] as double,
      monthlyUltraStorageCost: map['monthlyUltraStorageCost'] as double,
      name: map['name'] as String,
      numberOfMachines: map['numberOfMachines'] as int,
      percentile: (() {
        final guardedValue = map['percentile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      perfDataEndTime: (() {
        final guardedValue = map['perfDataEndTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      perfDataStartTime: (() {
        final guardedValue = map['perfDataStartTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pricesTimestamp: map['pricesTimestamp'] as String,
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      reservedInstance: (() {
        final guardedValue = map['reservedInstance'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      scalingFactor: (() {
        final guardedValue = map['scalingFactor'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      schemaVersion: map['schemaVersion'] as String,
      sizingCriterion: (() {
        final guardedValue = map['sizingCriterion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      stage: map['stage'] as String,
      status: map['status'] as String,
      suitabilitySummary: (map['suitabilitySummary'] as Map)
          .cast<String, int>(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      timeRange: (() {
        final guardedValue = map['timeRange'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
      vmUptime: (() {
        final guardedValue = map['vmUptime'];
        if (guardedValue == null) return null;
        return VmUptimeResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
