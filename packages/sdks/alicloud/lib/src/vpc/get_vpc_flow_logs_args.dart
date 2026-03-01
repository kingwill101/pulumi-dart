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
    pulumi.Output<String>? description,
    pulumi.Output<String>? flowLogName,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? logStoreName,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? trafficType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      flowLogName = pulumi.Input.asOptionalInput<String>(flowLogName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      logStoreName = pulumi.Input.asOptionalInput<String>(logStoreName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      trafficType = pulumi.Input.asOptionalInput<String>(trafficType);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      flowLogName: map['flowLogName'] == null ? null : pulumi.Output.create<String>(map['flowLogName'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      logStoreName: map['logStoreName'] == null ? null : pulumi.Output.create<String>(map['logStoreName'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      trafficType: map['trafficType'] == null ? null : pulumi.Output.create<String>(map['trafficType'] as String),
    );
  }
}

