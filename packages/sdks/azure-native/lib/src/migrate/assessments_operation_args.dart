// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_uptime.dart';

/// {@template pulumi_migrate_assessments_operation_args_doc}
/// The set of arguments for AssessmentsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_assessments_operation_args_doc}
class AssessmentsOperationArgs {
  /// Machine Assessment ARM name
  final pulumi.Input<String>? assessmentName;
  /// Gets or sets the azure storage type. Premium, Standard etc.
  final pulumi.Input<List<String>>? azureDiskTypes;
  /// Gets or sets the user configurable setting to display the azure hybrid use
  /// benefit.
  final pulumi.Input<String>? azureHybridUseBenefit;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String>? azureLocation;
  /// Azure Offer Code.
  final pulumi.Input<String>? azureOfferCode;
  /// Gets or sets Azure Pricing Tier - Free, Basic, etc.
  final pulumi.Input<String>? azurePricingTier;
  /// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  final pulumi.Input<String>? azureStorageRedundancy;
  /// Gets or sets the Azure VM families.
  final pulumi.Input<List<String>>? azureVmFamilies;
  /// Currency in which prices should be reported.
  final pulumi.Input<String>? currency;
  /// Custom discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// Gets or sets enterprise agreement subscription id.
  final pulumi.Input<String>? eaSubscriptionId;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Gets or sets the user configurable setting to display the linux azure hybrid use
  /// benefit.
  final pulumi.Input<String>? linuxAzureHybridUseBenefit;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final pulumi.Input<String>? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final pulumi.Input<String>? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final pulumi.Input<String>? perfDataStartTime;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// Gets or sets the Azure Reserved Instance - 1-Year, 3-Year.
  final pulumi.Input<String>? reservedInstance;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<String>? sizingCriterion;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final pulumi.Input<String>? timeRange;
  /// Gets or sets the duration for which the VMs are up in the on-premises
  /// environment.
  final pulumi.Input<VmUptime>? vmUptime;

  /// Creates a new [AssessmentsOperationArgs].
  /// [assessmentName] Machine Assessment ARM name
  /// [azureDiskTypes] Gets or sets the azure storage type. Premium, Standard etc.
  /// [azureHybridUseBenefit] Gets or sets the user configurable setting to display the azure hybrid use
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureOfferCode] Azure Offer Code.
  /// [azurePricingTier] Gets or sets Azure Pricing Tier - Free, Basic, etc.
  /// [azureStorageRedundancy] Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  /// [azureVmFamilies] Gets or sets the Azure VM families.
  /// [currency] Currency in which prices should be reported.
  /// [discountPercentage] Custom discount percentage.
  /// [eaSubscriptionId] Gets or sets enterprise agreement subscription id.
  /// [groupName] Group ARM name
  /// [linuxAzureHybridUseBenefit] Gets or sets the user configurable setting to display the linux azure hybrid use
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [projectName] Assessment Project Name
  /// [provisioningState] The status of the last operation.
  /// [reservedInstance] Gets or sets the Azure Reserved Instance - 1-Year, 3-Year.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [sizingCriterion] Assessment sizing criterion.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  /// [vmUptime] Gets or sets the duration for which the VMs are up in the on-premises
  AssessmentsOperationArgs({
    this.assessmentName,
    this.azureDiskTypes,
    this.azureHybridUseBenefit,
    this.azureLocation,
    this.azureOfferCode,
    this.azurePricingTier,
    this.azureStorageRedundancy,
    this.azureVmFamilies,
    this.currency,
    this.discountPercentage,
    this.eaSubscriptionId,
    required this.groupName,
    this.linuxAzureHybridUseBenefit,
    this.percentile,
    this.perfDataEndTime,
    this.perfDataStartTime,
    required this.projectName,
    this.provisioningState,
    this.reservedInstance,
    required this.resourceGroupName,
    this.scalingFactor,
    this.sizingCriterion,
    this.timeRange,
    this.vmUptime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'azureDiskTypes': ?azureDiskTypes,
      'azureHybridUseBenefit': ?azureHybridUseBenefit,
      'azureLocation': ?azureLocation,
      'azureOfferCode': ?azureOfferCode,
      'azurePricingTier': ?azurePricingTier,
      'azureStorageRedundancy': ?azureStorageRedundancy,
      'azureVmFamilies': ?azureVmFamilies,
      'currency': ?currency,
      'discountPercentage': ?discountPercentage,
      'eaSubscriptionId': ?eaSubscriptionId,
      'groupName': groupName,
      'linuxAzureHybridUseBenefit': ?linuxAzureHybridUseBenefit,
      'percentile': ?percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'reservedInstance': ?reservedInstance,
      'resourceGroupName': resourceGroupName,
      'scalingFactor': ?scalingFactor,
      'sizingCriterion': ?sizingCriterion,
      'timeRange': ?timeRange,
      'vmUptime': ?pulumi.Input.mapOptionalInputValue<VmUptime, Map<String, dynamic>>(vmUptime, (value) => value.toMap()),
    };
  }

  factory AssessmentsOperationArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentsOperationArgs(
      assessmentName: map['assessmentName'] == null ? null : (map['assessmentName']! as String).input(),
      azureDiskTypes: map['azureDiskTypes'] == null ? null : ((map['azureDiskTypes']! as List).cast<String>()).input(),
      azureHybridUseBenefit: map['azureHybridUseBenefit'] == null ? null : (map['azureHybridUseBenefit']! as String).input(),
      azureLocation: map['azureLocation'] == null ? null : (map['azureLocation']! as String).input(),
      azureOfferCode: map['azureOfferCode'] == null ? null : (map['azureOfferCode']! as String).input(),
      azurePricingTier: map['azurePricingTier'] == null ? null : (map['azurePricingTier']! as String).input(),
      azureStorageRedundancy: map['azureStorageRedundancy'] == null ? null : (map['azureStorageRedundancy']! as String).input(),
      azureVmFamilies: map['azureVmFamilies'] == null ? null : ((map['azureVmFamilies']! as List).cast<String>()).input(),
      currency: map['currency'] == null ? null : (map['currency']! as String).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage']! as double).input(),
      eaSubscriptionId: map['eaSubscriptionId'] == null ? null : (map['eaSubscriptionId']! as String).input(),
      groupName: (map['groupName'] as String).input(),
      linuxAzureHybridUseBenefit: map['linuxAzureHybridUseBenefit'] == null ? null : (map['linuxAzureHybridUseBenefit']! as String).input(),
      percentile: map['percentile'] == null ? null : (map['percentile']! as String).input(),
      perfDataEndTime: map['perfDataEndTime'] == null ? null : (map['perfDataEndTime']! as String).input(),
      perfDataStartTime: map['perfDataStartTime'] == null ? null : (map['perfDataStartTime']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      reservedInstance: map['reservedInstance'] == null ? null : (map['reservedInstance']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scalingFactor: map['scalingFactor'] == null ? null : (map['scalingFactor']! as double).input(),
      sizingCriterion: map['sizingCriterion'] == null ? null : (map['sizingCriterion']! as String).input(),
      timeRange: map['timeRange'] == null ? null : (map['timeRange']! as String).input(),
      vmUptime: map['vmUptime'] == null ? null : (VmUptime.fromMap((map['vmUptime']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

