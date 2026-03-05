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
  /// (Available since v1.236.0) Cross-region Connection ID or VBR connection ID.&gt; This parameter is required.
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
  /// [transitRouterAttachmentId] (Available since v1.236.0) Cross-region Connection ID or VBR connection ID.&gt; This parameter is required.
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
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      flowLogId: pulumi.Input.fromValue(map['flowLogId'] as String),
      flowLogName: pulumi.Input.fromValue(map['flowLogName'] as String),
      flowLogVersion: pulumi.Input.fromValue(map['flowLogVersion'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      logFormatString: pulumi.Input.fromValue(map['logFormatString'] as String),
      logStoreName: pulumi.Input.fromValue(map['logStoreName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      recordTotal: pulumi.Input.fromValue(map['recordTotal'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      transitRouterAttachmentId: pulumi.Input.fromValue(map['transitRouterAttachmentId'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}

