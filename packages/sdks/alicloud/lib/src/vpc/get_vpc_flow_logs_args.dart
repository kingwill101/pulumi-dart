// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_vpc_flow_logs_get_vpc_flow_logs_args_doc}
/// Arguments for getVpcFlowLogs.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_vpc_flow_logs_get_vpc_flow_logs_args_doc}
class GetVpcFlowLogsArgs {
  /// The Description of flow log.
  final pulumi.Input<String>? description;
  /// The flow log name.
  final pulumi.Input<String>? flowLogName;
  /// A list of Flow Log IDs.
  final pulumi.Input<List<String>>? ids;
  /// The log store name.
  final pulumi.Input<String>? logStoreName;
  /// A regex string to filter results by Flow Log name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The project name.
  final pulumi.Input<String>? projectName;
  /// The resource id.
  final pulumi.Input<String>? resourceId;
  /// The resource type. Valid values: `NetworkInterface`, `VPC`, `VSwitch`.
  final pulumi.Input<String>? resourceType;
  /// The status of  flow log. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String>? status;
  /// The traffic type. Valid values: `All`, `Allow`, `Drop`.
  final pulumi.Input<String>? trafficType;

  /// Creates a new [GetVpcFlowLogsArgs].
  /// [description] The Description of flow log.
  /// [flowLogName] The flow log name.
  /// [ids] A list of Flow Log IDs.
  /// [logStoreName] The log store name.
  /// [nameRegex] A regex string to filter results by Flow Log name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [projectName] The project name.
  /// [resourceId] The resource id.
  /// [resourceType] The resource type. Valid values: `NetworkInterface`, `VPC`, `VSwitch`.
  /// [status] The status of  flow log. Valid values: `Active`, `Inactive`.
  /// [trafficType] The traffic type. Valid values: `All`, `Allow`, `Drop`.
  GetVpcFlowLogsArgs({
    this.description,
    this.flowLogName,
    this.ids,
    this.logStoreName,
    this.nameRegex,
    this.outputFile,
    this.projectName,
    this.resourceId,
    this.resourceType,
    this.status,
    this.trafficType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'flowLogName': ?flowLogName,
      'ids': ?ids,
      'logStoreName': ?logStoreName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'projectName': ?projectName,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status,
      'trafficType': ?trafficType,
    };
  }

  factory GetVpcFlowLogsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcFlowLogsArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      flowLogName: map['flowLogName'] == null ? null : (map['flowLogName']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      logStoreName: map['logStoreName'] == null ? null : (map['logStoreName']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      trafficType: map['trafficType'] == null ? null : (map['trafficType']! as String).input(),
    );
  }
}

