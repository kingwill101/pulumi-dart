// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_avs_assessments_operation_args_doc}
/// The set of arguments for AvsAssessmentsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_avs_assessments_operation_args_doc}
class AvsAssessmentsOperationArgs {
  /// AVS Assessment ARM name
  final pulumi.Input<String?>? assessmentName;
  /// AVS Assessment Scenario.
  final pulumi.Input<dynamic>? avsAssessmentScenario;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<dynamic>? azureLocation;
  /// Azure Offer code according to which cost estimation is done.
  final pulumi.Input<dynamic>? azureOfferCode;
  /// Percentage of CPU capacity reserved for processing additional workloads.
  final pulumi.Input<double?>? cpuHeadroom;
  /// Currency in which prices should be reported.
  final pulumi.Input<dynamic>? currency;
  /// De-duplication compression.
  final pulumi.Input<double?>? dedupeCompression;
  /// Custom discount percentage.
  final pulumi.Input<double?>? discountPercentage;
  /// List of AVS external storage types.
  final pulumi.Input<List<dynamic>?>? externalStorageTypes;
  /// Failures to tolerate and RAID level in a common property.
  final pulumi.Input<dynamic>? failuresToTolerateAndRaidLevel;
  /// List of Failures to tolerate and RAID levels in a common property.
  final pulumi.Input<List<dynamic>?>? failuresToTolerateAndRaidLevelList;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Is Stretch Cluster Enabled.
  final pulumi.Input<bool?>? isStretchClusterEnabled;
  /// Is VCF license applied
  final pulumi.Input<bool?>? isVcfByolEnabled;
  /// Memory overcommit.
  final pulumi.Input<double?>? memOvercommit;
  /// AVS node type.
  final pulumi.Input<dynamic>? nodeType;
  /// AVS node types.
  final pulumi.Input<List<dynamic>?>? nodeTypes;
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
  /// Reserved instance.
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
  /// VCPU over subscription.
  final pulumi.Input<double?>? vcpuOversubscription;

  /// Creates a new [AvsAssessmentsOperationArgs].
  /// [assessmentName] AVS Assessment ARM name
  /// [avsAssessmentScenario] AVS Assessment Scenario.
  /// [azureLocation] Azure Location or Azure region where to which the machines will be migrated.
  /// [azureOfferCode] Azure Offer code according to which cost estimation is done.
  /// [cpuHeadroom] Percentage of CPU capacity reserved for processing additional workloads.
  /// [currency] Currency in which prices should be reported.
  /// [dedupeCompression] De-duplication compression.
  /// [discountPercentage] Custom discount percentage.
  /// [externalStorageTypes] List of AVS external storage types.
  /// [failuresToTolerateAndRaidLevel] Failures to tolerate and RAID level in a common property.
  /// [failuresToTolerateAndRaidLevelList] List of Failures to tolerate and RAID levels in a common property.
  /// [groupName] Group ARM name
  /// [isStretchClusterEnabled] Is Stretch Cluster Enabled.
  /// [isVcfByolEnabled] Is VCF license applied
  /// [memOvercommit] Memory overcommit.
  /// [nodeType] AVS node type.
  /// [nodeTypes] AVS node types.
  /// [percentile] Percentile of the utilization data values to be considered while assessing
  /// [perfDataEndTime] Gets or sets the end time to consider performance data for assessment.
  /// [perfDataStartTime] Gets or sets the start time to consider performance data for assessment.
  /// [projectName] Assessment Project Name
  /// [provisioningState] The status of the last operation.
  /// [reservedInstance] Reserved instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingFactor] Percentage of buffer that user wants on performance metrics when recommending
  /// [sizingCriterion] Assessment sizing criterion.
  /// [timeRange] Time Range for which the historic utilization data should be considered for
  /// [vcpuOversubscription] VCPU over subscription.
  const AvsAssessmentsOperationArgs({
    this.assessmentName,
    this.avsAssessmentScenario,
    this.azureLocation,
    this.azureOfferCode,
    this.cpuHeadroom,
    this.currency,
    this.dedupeCompression,
    this.discountPercentage,
    this.externalStorageTypes,
    this.failuresToTolerateAndRaidLevel,
    this.failuresToTolerateAndRaidLevelList,
    required this.groupName,
    this.isStretchClusterEnabled,
    this.isVcfByolEnabled,
    this.memOvercommit,
    this.nodeType,
    this.nodeTypes,
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
    this.vcpuOversubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'avsAssessmentScenario': ?avsAssessmentScenario,
      'azureLocation': ?azureLocation,
      'azureOfferCode': ?azureOfferCode,
      'cpuHeadroom': ?cpuHeadroom,
      'currency': ?currency,
      'dedupeCompression': ?dedupeCompression,
      'discountPercentage': ?discountPercentage,
      'externalStorageTypes': ?externalStorageTypes,
      'failuresToTolerateAndRaidLevel': ?failuresToTolerateAndRaidLevel,
      'failuresToTolerateAndRaidLevelList': ?failuresToTolerateAndRaidLevelList,
      'groupName': groupName,
      'isStretchClusterEnabled': ?isStretchClusterEnabled,
      'isVcfByolEnabled': ?isVcfByolEnabled,
      'memOvercommit': ?memOvercommit,
      'nodeType': ?nodeType,
      'nodeTypes': ?nodeTypes,
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
      'vcpuOversubscription': ?vcpuOversubscription,
    };
  }

  factory AvsAssessmentsOperationArgs.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentsOperationArgs(
      assessmentName: (() { final guardedValue = map['assessmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      avsAssessmentScenario: (() { final guardedValue = map['avsAssessmentScenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureLocation: (() { final guardedValue = map['azureLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureOfferCode: (() { final guardedValue = map['azureOfferCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      cpuHeadroom: (() { final guardedValue = map['cpuHeadroom']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dedupeCompression: (() { final guardedValue = map['dedupeCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      discountPercentage: (() { final guardedValue = map['discountPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      externalStorageTypes: (() { final guardedValue = map['externalStorageTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      failuresToTolerateAndRaidLevel: (() { final guardedValue = map['failuresToTolerateAndRaidLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      failuresToTolerateAndRaidLevelList: (() { final guardedValue = map['failuresToTolerateAndRaidLevelList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      isStretchClusterEnabled: (() { final guardedValue = map['isStretchClusterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isVcfByolEnabled: (() { final guardedValue = map['isVcfByolEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      memOvercommit: (() { final guardedValue = map['memOvercommit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      nodeTypes: (() { final guardedValue = map['nodeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
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
      vcpuOversubscription: (() { final guardedValue = map['vcpuOversubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
