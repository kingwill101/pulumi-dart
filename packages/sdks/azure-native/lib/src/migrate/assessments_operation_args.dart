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
    pulumi.Output<String>? assessmentName,
    pulumi.Output<List<String>>? azureDiskTypes,
    pulumi.Output<String>? azureHybridUseBenefit,
    pulumi.Output<String>? azureLocation,
    pulumi.Output<String>? azureOfferCode,
    pulumi.Output<String>? azurePricingTier,
    pulumi.Output<String>? azureStorageRedundancy,
    pulumi.Output<List<String>>? azureVmFamilies,
    pulumi.Output<String>? currency,
    pulumi.Output<double>? discountPercentage,
    pulumi.Output<String>? eaSubscriptionId,
    required pulumi.Output<String> groupName,
    pulumi.Output<String>? linuxAzureHybridUseBenefit,
    pulumi.Output<String>? percentile,
    pulumi.Output<String>? perfDataEndTime,
    pulumi.Output<String>? perfDataStartTime,
    required pulumi.Output<String> projectName,
    pulumi.Output<String>? provisioningState,
    pulumi.Output<String>? reservedInstance,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<double>? scalingFactor,
    pulumi.Output<String>? sizingCriterion,
    pulumi.Output<String>? timeRange,
    pulumi.Output<VmUptime>? vmUptime,
  }) :
      assessmentName = pulumi.Input.asOptionalInput<String>(assessmentName),
      azureDiskTypes = pulumi.Input.asOptionalInput<List<String>>(azureDiskTypes),
      azureHybridUseBenefit = pulumi.Input.asOptionalInput<String>(azureHybridUseBenefit),
      azureLocation = pulumi.Input.asOptionalInput<String>(azureLocation),
      azureOfferCode = pulumi.Input.asOptionalInput<String>(azureOfferCode),
      azurePricingTier = pulumi.Input.asOptionalInput<String>(azurePricingTier),
      azureStorageRedundancy = pulumi.Input.asOptionalInput<String>(azureStorageRedundancy),
      azureVmFamilies = pulumi.Input.asOptionalInput<List<String>>(azureVmFamilies),
      currency = pulumi.Input.asOptionalInput<String>(currency),
      discountPercentage = pulumi.Input.asOptionalInput<double>(discountPercentage),
      eaSubscriptionId = pulumi.Input.asOptionalInput<String>(eaSubscriptionId),
      groupName = pulumi.Input.asInput<String>(groupName),
      linuxAzureHybridUseBenefit = pulumi.Input.asOptionalInput<String>(linuxAzureHybridUseBenefit),
      percentile = pulumi.Input.asOptionalInput<String>(percentile),
      perfDataEndTime = pulumi.Input.asOptionalInput<String>(perfDataEndTime),
      perfDataStartTime = pulumi.Input.asOptionalInput<String>(perfDataStartTime),
      projectName = pulumi.Input.asInput<String>(projectName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      reservedInstance = pulumi.Input.asOptionalInput<String>(reservedInstance),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scalingFactor = pulumi.Input.asOptionalInput<double>(scalingFactor),
      sizingCriterion = pulumi.Input.asOptionalInput<String>(sizingCriterion),
      timeRange = pulumi.Input.asOptionalInput<String>(timeRange),
      vmUptime = pulumi.Input.asOptionalInput<VmUptime>(vmUptime);

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
      assessmentName: map['assessmentName'] == null ? null : pulumi.Output.create<String>(map['assessmentName'] as String),
      azureDiskTypes: map['azureDiskTypes'] == null ? null : pulumi.Output.create<List<String>>((map['azureDiskTypes'] as List).cast<String>()),
      azureHybridUseBenefit: map['azureHybridUseBenefit'] == null ? null : pulumi.Output.create<String>(map['azureHybridUseBenefit'] as String),
      azureLocation: map['azureLocation'] == null ? null : pulumi.Output.create<String>(map['azureLocation'] as String),
      azureOfferCode: map['azureOfferCode'] == null ? null : pulumi.Output.create<String>(map['azureOfferCode'] as String),
      azurePricingTier: map['azurePricingTier'] == null ? null : pulumi.Output.create<String>(map['azurePricingTier'] as String),
      azureStorageRedundancy: map['azureStorageRedundancy'] == null ? null : pulumi.Output.create<String>(map['azureStorageRedundancy'] as String),
      azureVmFamilies: map['azureVmFamilies'] == null ? null : pulumi.Output.create<List<String>>((map['azureVmFamilies'] as List).cast<String>()),
      currency: map['currency'] == null ? null : pulumi.Output.create<String>(map['currency'] as String),
      discountPercentage: map['discountPercentage'] == null ? null : pulumi.Output.create<double>(map['discountPercentage'] as double),
      eaSubscriptionId: map['eaSubscriptionId'] == null ? null : pulumi.Output.create<String>(map['eaSubscriptionId'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      linuxAzureHybridUseBenefit: map['linuxAzureHybridUseBenefit'] == null ? null : pulumi.Output.create<String>(map['linuxAzureHybridUseBenefit'] as String),
      percentile: map['percentile'] == null ? null : pulumi.Output.create<String>(map['percentile'] as String),
      perfDataEndTime: map['perfDataEndTime'] == null ? null : pulumi.Output.create<String>(map['perfDataEndTime'] as String),
      perfDataStartTime: map['perfDataStartTime'] == null ? null : pulumi.Output.create<String>(map['perfDataStartTime'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      reservedInstance: map['reservedInstance'] == null ? null : pulumi.Output.create<String>(map['reservedInstance'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scalingFactor: map['scalingFactor'] == null ? null : pulumi.Output.create<double>(map['scalingFactor'] as double),
      sizingCriterion: map['sizingCriterion'] == null ? null : pulumi.Output.create<String>(map['sizingCriterion'] as String),
      timeRange: map['timeRange'] == null ? null : pulumi.Output.create<String>(map['timeRange'] as String),
      vmUptime: map['vmUptime'] == null ? null : pulumi.Output.create<VmUptime>(VmUptime.fromMap((map['vmUptime'] as Map).cast<String, dynamic>())),
    );
  }
}

