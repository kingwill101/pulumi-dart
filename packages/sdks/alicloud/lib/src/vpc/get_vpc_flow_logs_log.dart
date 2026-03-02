// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcFlowLogsLog {
  /// The Description of flow log.
  final pulumi.Input<String> description;
  /// The flow log ID.
  final pulumi.Input<String> flowLogId;
  /// The flow log name.
  final pulumi.Input<String> flowLogName;
  /// The ID of the Flow Log.
  final pulumi.Input<String> id;
  /// The log store name.
  final pulumi.Input<String> logStoreName;
  /// The project name.
  final pulumi.Input<String> projectName;
  /// The resource id.
  final pulumi.Input<String> resourceId;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The status of flow log.
  final pulumi.Input<String> status;
  /// The traffic type.
  final pulumi.Input<String> trafficType;

  /// Creates a new [GetVpcFlowLogsLog].
  /// [description] The Description of flow log.
  /// [flowLogId] The flow log ID.
  /// [flowLogName] The flow log name.
  /// [id] The ID of the Flow Log.
  /// [logStoreName] The log store name.
  /// [projectName] The project name.
  /// [resourceId] The resource id.
  /// [resourceType] The resource type.
  /// [status] The status of flow log.
  /// [trafficType] The traffic type.
  GetVpcFlowLogsLog({
    required this.description,
    required this.flowLogId,
    required this.flowLogName,
    required this.id,
    required this.logStoreName,
    required this.projectName,
    required this.resourceId,
    required this.resourceType,
    required this.status,
    required this.trafficType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'flowLogId': flowLogId,
      'flowLogName': flowLogName,
      'id': id,
      'logStoreName': logStoreName,
      'projectName': projectName,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'status': status,
      'trafficType': trafficType,
    };
  }

  factory GetVpcFlowLogsLog.fromMap(Map<String, dynamic> map) {
    return GetVpcFlowLogsLog(
      description: (map['description'] as String).input(),
      flowLogId: (map['flowLogId'] as String).input(),
      flowLogName: (map['flowLogName'] as String).input(),
      id: (map['id'] as String).input(),
      logStoreName: (map['logStoreName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      status: (map['status'] as String).input(),
      trafficType: (map['trafficType'] as String).input(),
    );
  }
}

