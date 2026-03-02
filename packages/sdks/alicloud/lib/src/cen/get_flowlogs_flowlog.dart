// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlowlogsFlowlog {
  /// The ID of Cen instance.
  final pulumi.Input<String> cenId;
  /// The createTime of flowlog.
  final pulumi.Input<String> createTime;
  /// The description of the flowlog.
  final pulumi.Input<String> description;
  /// The ID of FlowLog.
  final pulumi.Input<String> flowLogId;
  /// The name of the flowlog.
  final pulumi.Input<String> flowLogName;
  /// Flowlog Version.
  final pulumi.Input<String> flowLogVersion;
  /// The ID of FlowLog.
  final pulumi.Input<String> id;
  /// The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: **60** or **600 * *. Default value: **600 * *.
  final pulumi.Input<int> interval;
  /// (Available since v1.236.0) Log Format.
  final pulumi.Input<String> logFormatString;
  /// The LogStore that stores the flowlog.
  final pulumi.Input<String> logStoreName;
  /// The Project that stores the flowlog.
  final pulumi.Input<String> projectName;
  /// (Available since v1.236.0) Total number of records.
  final pulumi.Input<String> recordTotal;
  /// Region id
  final pulumi.Input<String> regionId;
  /// The status of the flow log. Valid values:-**Active**: started.-**InActive**: not started.
  final pulumi.Input<String> status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// (Available since v1.236.0) Cross-region Connection ID or VBR connection ID.> This parameter is required.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// Transit Router ID
  final pulumi.Input<String> transitRouterId;

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
      cenId: (map['cenId'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      flowLogId: (map['flowLogId'] as String).input(),
      flowLogName: (map['flowLogName'] as String).input(),
      flowLogVersion: (map['flowLogVersion'] as String).input(),
      id: (map['id'] as String).input(),
      interval: (map['interval'] as int).input(),
      logFormatString: (map['logFormatString'] as String).input(),
      logStoreName: (map['logStoreName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      recordTotal: (map['recordTotal'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      transitRouterAttachmentId: (map['transitRouterAttachmentId'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
    );
  }
}

