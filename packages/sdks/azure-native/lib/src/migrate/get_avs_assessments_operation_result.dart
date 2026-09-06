// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avs_estimated_external_storage_response.dart';
import 'avs_estimated_network_response.dart';
import 'avs_estimated_node_response.dart';
import 'cost_component_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAvsAssessmentsOperation.
class GetAvsAssessmentsOperationResult {
  /// Gets the assessment error summary.
  /// This is the number of machines
  /// affected by each type of error in this assessment.
  final Map<String, int>? assessmentErrorSummary;
  /// Assessment type of the assessment.
  final String? assessmentType;
  /// AVS Assessment Scenario.
  final String? avsAssessmentScenario;
  /// Estimated External Storage for Assessment.
  final List<AvsEstimatedExternalStorageResponse>? avsEstimatedExternalStorages;
  /// Estimated External Storage for Assessment.
  final List<AvsEstimatedNetworkResponse>? avsEstimatedNetworks;
  /// Estimated AVS SKU for Assessment.
  final List<AvsEstimatedNodeResponse>? avsEstimatedNodes;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final String? azureLocation;
  /// Azure Offer code according to which cost estimation is done.
  final String? azureOfferCode;
  /// Confidence Rating in Percentage.
  final double? confidenceRatingInPercentage;
  /// collection of cost components.
  final List<CostComponentResponse>? costComponents;
  /// Percentage of CPU capacity reserved for processing additional workloads.
  final double? cpuHeadroom;
  /// Predicted CPU utilization.
  final double? cpuUtilization;
  /// Date and Time when assessment was created.
  final String? createdTimestamp;
  /// Currency in which prices should be reported.
  final String? currency;
  /// De-duplication compression.
  final double? dedupeCompression;
  /// Custom discount percentage.
  final double? discountPercentage;
  /// List of AVS external storage types.
  final List<String>? externalStorageTypes;
  /// Failures to tolerate and RAID level in a common property.
  final String? failuresToTolerateAndRaidLevel;
  /// List of Failures to tolerate and RAID levels in a common property.
  final List<String>? failuresToTolerateAndRaidLevelList;
  /// Gets the group type for the assessment.
  final String? groupType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Is Stretch Cluster Enabled.
  final bool? isStretchClusterEnabled;
  /// Is VCF license applied
  final bool? isVcfByolEnabled;
  /// Limiting factor.
  final String? limitingFactor;
  /// Memory overcommit.
  final double? memOvercommit;
  /// The name of the resource
  final String? name;
  /// AVS node type.
  final String? nodeType;
  /// AVS node types.
  final List<String>? nodeTypes;
  /// Number of machines part of the assessment.
  final int? numberOfMachines;
  /// Recommended number of nodes.
  final int? numberOfNodes;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  final String? percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  final String? perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  final String? perfDataStartTime;
  /// Time when the Azure Prices were queried. Date-Time represented in ISO-8601
  /// format.
  final String? pricesTimestamp;
  /// The status of the last operation.
  final String? provisioningState;
  /// Predicted RAM utilization.
  final double? ramUtilization;
  /// Reserved instance.
  final String? reservedInstance;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  final double? scalingFactor;
  /// Schema version.
  final String? schemaVersion;
  /// Assessment sizing criterion.
  final String? sizingCriterion;
  /// User configurable setting to display the Stage of Assessment.
  final String? stage;
  /// Whether assessment is in valid state and all machines have been assessed.
  final String? status;
  /// Predicted storage utilization.
  final double? storageUtilization;
  /// Gets or sets the Assessment cloud suitability.
  final String? suitability;
  /// Gets or sets the Assessment suitability explanation.
  final String? suitabilityExplanation;
  /// Cloud suitability summary for all the machines in the assessment.
  final Map<String, int>? suitabilitySummary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  final String? timeRange;
  /// Predicted total CPU cores used.
  final double? totalCpuCores;
  /// Total monthly cost.
  final double? totalMonthlyCost;
  /// Predicted total RAM used in GB.
  final double? totalRamInGB;
  /// Predicted total Storage used in GB.
  final double? totalStorageInGB;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Date and Time when assessment was last updated.
  final String? updatedTimestamp;
  /// VCPU over subscription.
  final double? vcpuOversubscription;

  /// Creates a new [GetAvsAssessmentsOperationResult].
  /// [assessmentErrorSummary] Gets the assessment error summary.
  /// [assessmentType] Assessment type of the assessment.
  /// [avsAssessmentScenario] AVS Assessment Scenario.
  /// [avsEstimatedExternalStorages] Estimated External Storage for Assessment.
  /// [avsEstimatedNetworks] Estimated External Storage for Assessment.
  /// [avsEstimatedNodes] Estimated AVS SKU for Assessment.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureOfferCode] Azure Offer code according to which cost estimation is done.
  /// [confidenceRatingInPercentage] Confidence Rating in Percentage.
  /// [costComponents] collection of cost components.
  /// [cpuHeadroom] Percentage of CPU capacity reserved for processing additional workloads.
  /// [cpuUtilization] Predicted CPU utilization.
  /// [createdTimestamp] Date and Time when assessment was created.
  /// [currency] Currency in which prices should be reported.
  /// [dedupeCompression] De-duplication compression.
  /// [discountPercentage] Custom discount percentage.
  /// [externalStorageTypes] List of AVS external storage types.
  /// [failuresToTolerateAndRaidLevel] Failures to tolerate and RAID level in a common property.
  /// [failuresToTolerateAndRaidLevelList] List of Failures to tolerate and RAID levels in a common property.
  /// [groupType] Gets the group type for the assessment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isStretchClusterEnabled] Is Stretch Cluster Enabled.
  /// [isVcfByolEnabled] Is VCF license applied
  /// [limitingFactor] Limiting factor.
  /// [memOvercommit] Memory overcommit.
  /// [name] The name of the resource
  /// [nodeType] AVS node type.
  /// [nodeTypes] AVS node types.
  /// [numberOfMachines] Number of machines part of the assessment.
  /// [numberOfNodes] Recommended number of nodes.
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [pricesTimestamp] Time when the Azure Prices were queried. Date-Time represented in ISO-8601
  /// [provisioningState] The status of the last operation.
  /// [ramUtilization] Predicted RAM utilization.
  /// [reservedInstance] Reserved instance.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [schemaVersion] Schema version.
  /// [sizingCriterion] Assessment sizing criterion.
  /// [stage] User configurable setting to display the Stage of Assessment.
  /// [status] Whether assessment is in valid state and all machines have been assessed.
  /// [storageUtilization] Predicted storage utilization.
  /// [suitability] Gets or sets the Assessment cloud suitability.
  /// [suitabilityExplanation] Gets or sets the Assessment suitability explanation.
  /// [suitabilitySummary] Cloud suitability summary for all the machines in the assessment.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  /// [totalCpuCores] Predicted total CPU cores used.
  /// [totalMonthlyCost] Total monthly cost.
  /// [totalRamInGB] Predicted total RAM used in GB.
  /// [totalStorageInGB] Predicted total Storage used in GB.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Date and Time when assessment was last updated.
  /// [vcpuOversubscription] VCPU over subscription.
  const GetAvsAssessmentsOperationResult({
    this.assessmentErrorSummary,
    this.assessmentType,
    this.avsAssessmentScenario,
    this.avsEstimatedExternalStorages,
    this.avsEstimatedNetworks,
    this.avsEstimatedNodes,
    this.azureApiVersion,
    this.azureLocation,
    this.azureOfferCode,
    this.confidenceRatingInPercentage,
    this.costComponents,
    this.cpuHeadroom,
    this.cpuUtilization,
    this.createdTimestamp,
    this.currency,
    this.dedupeCompression,
    this.discountPercentage,
    this.externalStorageTypes,
    this.failuresToTolerateAndRaidLevel,
    this.failuresToTolerateAndRaidLevelList,
    this.groupType,
    this.id,
    this.isStretchClusterEnabled,
    this.isVcfByolEnabled,
    this.limitingFactor,
    this.memOvercommit,
    this.name,
    this.nodeType,
    this.nodeTypes,
    this.numberOfMachines,
    this.numberOfNodes,
    this.percentile,
    this.perfDataEndTime,
    this.perfDataStartTime,
    this.pricesTimestamp,
    this.provisioningState,
    this.ramUtilization,
    this.reservedInstance,
    this.scalingFactor,
    this.schemaVersion,
    this.sizingCriterion,
    this.stage,
    this.status,
    this.storageUtilization,
    this.suitability,
    this.suitabilityExplanation,
    this.suitabilitySummary,
    this.systemData,
    this.timeRange,
    this.totalCpuCores,
    this.totalMonthlyCost,
    this.totalRamInGB,
    this.totalStorageInGB,
    this.type,
    this.updatedTimestamp,
    this.vcpuOversubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentErrorSummary': ?assessmentErrorSummary,
      'assessmentType': ?assessmentType,
      'avsAssessmentScenario': ?avsAssessmentScenario,
      'avsEstimatedExternalStorages': ?(() { final guardedValue = avsEstimatedExternalStorages; if (guardedValue == null) return null; return pulumi.Input.encodeList<AvsEstimatedExternalStorageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'avsEstimatedNetworks': ?(() { final guardedValue = avsEstimatedNetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<AvsEstimatedNetworkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'avsEstimatedNodes': ?(() { final guardedValue = avsEstimatedNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<AvsEstimatedNodeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'azureLocation': ?azureLocation,
      'azureOfferCode': ?azureOfferCode,
      'confidenceRatingInPercentage': ?confidenceRatingInPercentage,
      'costComponents': ?(() { final guardedValue = costComponents; if (guardedValue == null) return null; return pulumi.Input.encodeList<CostComponentResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cpuHeadroom': ?cpuHeadroom,
      'cpuUtilization': ?cpuUtilization,
      'createdTimestamp': ?createdTimestamp,
      'currency': ?currency,
      'dedupeCompression': ?dedupeCompression,
      'discountPercentage': ?discountPercentage,
      'externalStorageTypes': ?externalStorageTypes,
      'failuresToTolerateAndRaidLevel': ?failuresToTolerateAndRaidLevel,
      'failuresToTolerateAndRaidLevelList': ?failuresToTolerateAndRaidLevelList,
      'groupType': ?groupType,
      'id': ?id,
      'isStretchClusterEnabled': ?isStretchClusterEnabled,
      'isVcfByolEnabled': ?isVcfByolEnabled,
      'limitingFactor': ?limitingFactor,
      'memOvercommit': ?memOvercommit,
      'name': ?name,
      'nodeType': ?nodeType,
      'nodeTypes': ?nodeTypes,
      'numberOfMachines': ?numberOfMachines,
      'numberOfNodes': ?numberOfNodes,
      'percentile': ?percentile,
      'perfDataEndTime': ?perfDataEndTime,
      'perfDataStartTime': ?perfDataStartTime,
      'pricesTimestamp': ?pricesTimestamp,
      'provisioningState': ?provisioningState,
      'ramUtilization': ?ramUtilization,
      'reservedInstance': ?reservedInstance,
      'scalingFactor': ?scalingFactor,
      'schemaVersion': ?schemaVersion,
      'sizingCriterion': ?sizingCriterion,
      'stage': ?stage,
      'status': ?status,
      'storageUtilization': ?storageUtilization,
      'suitability': ?suitability,
      'suitabilityExplanation': ?suitabilityExplanation,
      'suitabilitySummary': ?suitabilitySummary,
      'systemData': ?systemData?.toMap(),
      'timeRange': ?timeRange,
      'totalCpuCores': ?totalCpuCores,
      'totalMonthlyCost': ?totalMonthlyCost,
      'totalRamInGB': ?totalRamInGB,
      'totalStorageInGB': ?totalStorageInGB,
      'type': ?type,
      'updatedTimestamp': ?updatedTimestamp,
      'vcpuOversubscription': ?vcpuOversubscription,
    };
  }

  factory GetAvsAssessmentsOperationResult.fromMap(Map<String, dynamic> map) {
    return GetAvsAssessmentsOperationResult(
      assessmentErrorSummary: (() { final guardedValue = map['assessmentErrorSummary']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, int>(); })(),
      assessmentType: (() { final guardedValue = map['assessmentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      avsAssessmentScenario: (() { final guardedValue = map['avsAssessmentScenario']; if (guardedValue == null) return null; return guardedValue as String; })(),
      avsEstimatedExternalStorages: (() { final guardedValue = map['avsEstimatedExternalStorages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AvsEstimatedExternalStorageResponse>(guardedValue, (value) => AvsEstimatedExternalStorageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      avsEstimatedNetworks: (() { final guardedValue = map['avsEstimatedNetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AvsEstimatedNetworkResponse>(guardedValue, (value) => AvsEstimatedNetworkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      avsEstimatedNodes: (() { final guardedValue = map['avsEstimatedNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AvsEstimatedNodeResponse>(guardedValue, (value) => AvsEstimatedNodeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureOfferCode: (() { final guardedValue = map['azureOfferCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      confidenceRatingInPercentage: (() { final guardedValue = map['confidenceRatingInPercentage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      costComponents: (() { final guardedValue = map['costComponents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CostComponentResponse>(guardedValue, (value) => CostComponentResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      cpuHeadroom: (() { final guardedValue = map['cpuHeadroom']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuUtilization: (() { final guardedValue = map['cpuUtilization']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedupeCompression: (() { final guardedValue = map['dedupeCompression']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      externalStorageTypes: (() { final guardedValue = map['externalStorageTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      failuresToTolerateAndRaidLevel: (() { final guardedValue = map['failuresToTolerateAndRaidLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failuresToTolerateAndRaidLevelList: (() { final guardedValue = map['failuresToTolerateAndRaidLevelList']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isStretchClusterEnabled: (() { final guardedValue = map['isStretchClusterEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isVcfByolEnabled: (() { final guardedValue = map['isVcfByolEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      limitingFactor: (() { final guardedValue = map['limitingFactor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memOvercommit: (() { final guardedValue = map['memOvercommit']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTypes: (() { final guardedValue = map['nodeTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      numberOfMachines: (() { final guardedValue = map['numberOfMachines']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      numberOfNodes: (() { final guardedValue = map['numberOfNodes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      percentile: (() { final guardedValue = map['percentile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perfDataEndTime: (() { final guardedValue = map['perfDataEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perfDataStartTime: (() { final guardedValue = map['perfDataStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pricesTimestamp: (() { final guardedValue = map['pricesTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ramUtilization: (() { final guardedValue = map['ramUtilization']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      reservedInstance: (() { final guardedValue = map['reservedInstance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scalingFactor: (() { final guardedValue = map['scalingFactor']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      schemaVersion: (() { final guardedValue = map['schemaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizingCriterion: (() { final guardedValue = map['sizingCriterion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageUtilization: (() { final guardedValue = map['storageUtilization']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      suitability: (() { final guardedValue = map['suitability']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suitabilityExplanation: (() { final guardedValue = map['suitabilityExplanation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suitabilitySummary: (() { final guardedValue = map['suitabilitySummary']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, int>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeRange: (() { final guardedValue = map['timeRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalCpuCores: (() { final guardedValue = map['totalCpuCores']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalMonthlyCost: (() { final guardedValue = map['totalMonthlyCost']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalRamInGB: (() { final guardedValue = map['totalRamInGB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalStorageInGB: (() { final guardedValue = map['totalStorageInGB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedTimestamp: (() { final guardedValue = map['updatedTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcpuOversubscription: (() { final guardedValue = map['vcpuOversubscription']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
