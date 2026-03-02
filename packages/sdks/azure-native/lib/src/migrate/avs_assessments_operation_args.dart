// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_avs_assessments_operation_args_doc}
/// The set of arguments for AvsAssessmentsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_avs_assessments_operation_args_doc}
class AvsAssessmentsOperationArgs {
  /// AVS Assessment ARM name
  final pulumi.Input<String>? assessmentName;
  /// AVS Assessment Scenario.
  final pulumi.Input<String>? avsAssessmentScenario;
  /// Azure Location or Azure region where to which the machines will be migrated.
  final pulumi.Input<String>? azureLocation;
  /// Azure Offer code according to which cost estimation is done.
  final pulumi.Input<String>? azureOfferCode;
  /// Percentage of CPU capacity reserved for processing additional workloads.
  final pulumi.Input<double>? cpuHeadroom;
  /// Currency in which prices should be reported.
  final pulumi.Input<String>? currency;
  /// De-duplication compression.
  final pulumi.Input<double>? dedupeCompression;
  /// Custom discount percentage.
  final pulumi.Input<double>? discountPercentage;
  /// List of AVS external storage types.
  final pulumi.Input<List<String>>? externalStorageTypes;
  /// Failures to tolerate and RAID level in a common property.
  final pulumi.Input<String>? failuresToTolerateAndRaidLevel;
  /// List of Failures to tolerate and RAID levels in a common property.
  final pulumi.Input<List<String>>? failuresToTolerateAndRaidLevelList;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Is Stretch Cluster Enabled.
  final pulumi.Input<bool>? isStretchClusterEnabled;
  /// Is VCF license applied
  final pulumi.Input<bool>? isVcfByolEnabled;
  /// Memory overcommit.
  final pulumi.Input<double>? memOvercommit;
  /// AVS node type.
  final pulumi.Input<String>? nodeType;
  /// AVS node types.
  final pulumi.Input<List<String>>? nodeTypes;
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
  /// Reserved instance.
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
  /// VCPU over subscription.
  final pulumi.Input<double>? vcpuOversubscription;

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
  AvsAssessmentsOperationArgs({
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
      assessmentName: map['assessmentName'] == null ? null : (map['assessmentName'] as String).input(),
      avsAssessmentScenario: map['avsAssessmentScenario'] == null ? null : (map['avsAssessmentScenario'] as String).input(),
      azureLocation: map['azureLocation'] == null ? null : (map['azureLocation'] as String).input(),
      azureOfferCode: map['azureOfferCode'] == null ? null : (map['azureOfferCode'] as String).input(),
      cpuHeadroom: map['cpuHeadroom'] == null ? null : (map['cpuHeadroom'] as double).input(),
      currency: map['currency'] == null ? null : (map['currency'] as String).input(),
      dedupeCompression: map['dedupeCompression'] == null ? null : (map['dedupeCompression'] as double).input(),
      discountPercentage: map['discountPercentage'] == null ? null : (map['discountPercentage'] as double).input(),
      externalStorageTypes: map['externalStorageTypes'] == null ? null : ((map['externalStorageTypes'] as List).cast<String>()).input(),
      failuresToTolerateAndRaidLevel: map['failuresToTolerateAndRaidLevel'] == null ? null : (map['failuresToTolerateAndRaidLevel'] as String).input(),
      failuresToTolerateAndRaidLevelList: map['failuresToTolerateAndRaidLevelList'] == null ? null : ((map['failuresToTolerateAndRaidLevelList'] as List).cast<String>()).input(),
      groupName: (map['groupName'] as String).input(),
      isStretchClusterEnabled: map['isStretchClusterEnabled'] == null ? null : (map['isStretchClusterEnabled'] as bool).input(),
      isVcfByolEnabled: map['isVcfByolEnabled'] == null ? null : (map['isVcfByolEnabled'] as bool).input(),
      memOvercommit: map['memOvercommit'] == null ? null : (map['memOvercommit'] as double).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      nodeTypes: map['nodeTypes'] == null ? null : ((map['nodeTypes'] as List).cast<String>()).input(),
      percentile: map['percentile'] == null ? null : (map['percentile'] as String).input(),
      perfDataEndTime: map['perfDataEndTime'] == null ? null : (map['perfDataEndTime'] as String).input(),
      perfDataStartTime: map['perfDataStartTime'] == null ? null : (map['perfDataStartTime'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      reservedInstance: map['reservedInstance'] == null ? null : (map['reservedInstance'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scalingFactor: map['scalingFactor'] == null ? null : (map['scalingFactor'] as double).input(),
      sizingCriterion: map['sizingCriterion'] == null ? null : (map['sizingCriterion'] as String).input(),
      timeRange: map['timeRange'] == null ? null : (map['timeRange'] as String).input(),
      vcpuOversubscription: map['vcpuOversubscription'] == null ? null : (map['vcpuOversubscription'] as double).input(),
    );
  }
}

