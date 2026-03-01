// ignore_for_file: unused_element, unnecessary_cast


class GetVpcFlowLogsLog {
  /// The Description of flow log.
  final String description;
  /// The flow log ID.
  final String flowLogId;
  /// The flow log name.
  final String flowLogName;
  /// The ID of the Flow Log.
  final String id;
  /// The log store name.
  final String logStoreName;
  /// The project name.
  final String projectName;
  /// The resource id.
  final String resourceId;
  /// The resource type.
  final String resourceType;
  /// The status of flow log.
  final String status;
  /// The traffic type.
  final String trafficType;

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
      description: map['description'] as String,
      flowLogId: map['flowLogId'] as String,
      flowLogName: map['flowLogName'] as String,
      id: map['id'] as String,
      logStoreName: map['logStoreName'] as String,
      projectName: map['projectName'] as String,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] as String,
      trafficType: map['trafficType'] as String,
    );
  }
}

