// ignore_for_file: unused_element, unnecessary_cast


class GetFlowlogsFlowlog {
  /// The ID of Cen instance.
  final String cenId;
  /// The createTime of flowlog.
  final String createTime;
  /// The description of the flowlog.
  final String description;
  /// The ID of FlowLog.
  final String flowLogId;
  /// The name of the flowlog.
  final String flowLogName;
  /// Flowlog Version.
  final String flowLogVersion;
  /// The ID of FlowLog.
  final String id;
  /// The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: **60** or **600 * *. Default value: **600 * *.
  final int interval;
  /// (Available since v1.236.0) Log Format.
  final String logFormatString;
  /// The LogStore that stores the flowlog.
  final String logStoreName;
  /// The Project that stores the flowlog.
  final String projectName;
  /// (Available since v1.236.0) Total number of records.
  final String recordTotal;
  /// Region id
  final String regionId;
  /// The status of the flow log. Valid values:-**Active**: started.-**InActive**: not started.
  final String status;
  /// The tag of the resource.
  final Map<String, String> tags;
  /// (Available since v1.236.0) Cross-region Connection ID or VBR connection ID.> This parameter is required.
  final String transitRouterAttachmentId;
  /// Transit Router ID
  final String transitRouterId;

  /// Creates a new [GetFlowlogsFlowlog].
  /// [cenId] The ID of Cen instance.
  /// [createTime] The createTime of flowlog.
  /// [description] The description of the flowlog.
  /// [flowLogId] The ID of FlowLog.
  /// [flowLogName] The name of the flowlog.
  /// [flowLogVersion] Flowlog Version.
  /// [id] The ID of FlowLog.
  /// [interval] The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: **60** or **600 * *. Default value: **600 * *.
  /// [logFormatString] (Available since v1.236.0) Log Format.
  /// [logStoreName] The LogStore that stores the flowlog.
  /// [projectName] The Project that stores the flowlog.
  /// [recordTotal] (Available since v1.236.0) Total number of records.
  /// [regionId] Region id
  /// [status] The status of the flow log. Valid values:-**Active**: started.-**InActive**: not started.
  /// [tags] The tag of the resource.
  /// [transitRouterAttachmentId] (Available since v1.236.0) Cross-region Connection ID or VBR connection ID.> This parameter is required.
  /// [transitRouterId] Transit Router ID
  GetFlowlogsFlowlog({
    required this.cenId,
    required this.createTime,
    required this.description,
    required this.flowLogId,
    required this.flowLogName,
    required this.flowLogVersion,
    required this.id,
    required this.interval,
    required this.logFormatString,
    required this.logStoreName,
    required this.projectName,
    required this.recordTotal,
    required this.regionId,
    required this.status,
    required this.tags,
    required this.transitRouterAttachmentId,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'createTime': createTime,
      'description': description,
      'flowLogId': flowLogId,
      'flowLogName': flowLogName,
      'flowLogVersion': flowLogVersion,
      'id': id,
      'interval': interval,
      'logFormatString': logFormatString,
      'logStoreName': logStoreName,
      'projectName': projectName,
      'recordTotal': recordTotal,
      'regionId': regionId,
      'status': status,
      'tags': tags,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetFlowlogsFlowlog.fromMap(Map<String, dynamic> map) {
    return GetFlowlogsFlowlog(
      cenId: map['cenId'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      flowLogId: map['flowLogId'] as String,
      flowLogName: map['flowLogName'] as String,
      flowLogVersion: map['flowLogVersion'] as String,
      id: map['id'] as String,
      interval: map['interval'] as int,
      logFormatString: map['logFormatString'] as String,
      logStoreName: map['logStoreName'] as String,
      projectName: map['projectName'] as String,
      recordTotal: map['recordTotal'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

