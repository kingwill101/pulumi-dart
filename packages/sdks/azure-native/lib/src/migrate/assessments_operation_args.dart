// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_uptime.dart';

/// {@template pulumi_migrate_assessments_operation_args_doc}
/// The set of arguments for AssessmentsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_assessments_operation_args_doc}
class AssessmentsOperationArgs {
  /// Machine Assessment ARM name
  final pulumi.Input<String?>? assessmentName;
  /// Gets or sets the azure storage type. Premium, Standard etc.
  final pulumi.Input<List<dynamic>?>? azureDiskTypes;
  /// Gets or sets the user configurable setting to display the azure hybrid use
  /// benefit.
  final pulumi.Input<dynamic>? azureHybridUseBenefit;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String?>? azureLocation;
  /// Azure Offer Code.
  final pulumi.Input<dynamic>? azureOfferCode;
  /// Gets or sets Azure Pricing Tier - Free, Basic, etc.
  final pulumi.Input<dynamic>? azurePricingTier;
  /// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  final pulumi.Input<dynamic>? azureStorageRedundancy;
  /// Gets or sets the Azure VM families.
  final pulumi.Input<List<dynamic>?>? azureVmFamilies;
  /// Currency in which prices should be reported.
  final pulumi.Input<dynamic>? currency;
  /// Custom discount percentage.
  final pulumi.Input<double?>? discountPercentage;
  /// Gets or sets enterprise agreement subscription id.
  final pulumi.Input<String?>? eaSubscriptionId;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Gets or sets the user configurable setting to display the linux azure hybrid use
  /// benefit.
  final pulumi.Input<dynamic>? linuxAzureHybridUseBenefit;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final pulumi.Input<dynamic>? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final pulumi.Input<String?>? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final pulumi.Input<String?>? perfDataStartTime;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The status of the last operation.
  final pulumi.Input<dynamic>? provisioningState;
  /// Gets or sets the Azure Reserved Instance - 1-Year, 3-Year.
  final pulumi.Input<dynamic>? reservedInstance;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final pulumi.Input<double?>? scalingFactor;
  /// Assessment sizing criterion.
  final pulumi.Input<dynamic>? sizingCriterion;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final pulumi.Input<dynamic>? timeRange;
  /// Gets or sets the duration for which the VMs are up in the on-premises
  /// environment.
  final pulumi.Input<VmUptime?>? vmUptime;

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
  const AssessmentsOperationArgs({
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
      assessmentName: (() { final guardedValue = map['assessmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureDiskTypes: (() { final guardedValue = map['azureDiskTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      azureHybridUseBenefit: (() { final guardedValue = map['azureHybridUseBenefit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureOfferCode: (() { final guardedValue = map['azureOfferCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azurePricingTier: (() { final guardedValue = map['azurePricingTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureStorageRedundancy: (() { final guardedValue = map['azureStorageRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureVmFamilies: (() { final guardedValue = map['azureVmFamilies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      eaSubscriptionId: (() { final guardedValue = map['eaSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      linuxAzureHybridUseBenefit: (() { final guardedValue = map['linuxAzureHybridUseBenefit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      percentile: (() { final guardedValue = map['percentile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      perfDataEndTime: (() { final guardedValue = map['perfDataEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perfDataStartTime: (() { final guardedValue = map['perfDataStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      reservedInstance: (() { final guardedValue = map['reservedInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sizingCriterion: (() { final guardedValue = map['sizingCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      timeRange: (() { final guardedValue = map['timeRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      vmUptime: (() { final guardedValue = map['vmUptime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmUptime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
