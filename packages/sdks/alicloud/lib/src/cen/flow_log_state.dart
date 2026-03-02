// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlowLog resources.
class FlowLogState {
  /// cen id
  final pulumi.Input<String>? cenId;
  /// CreateTime
  final pulumi.Input<String>? createTime;
  /// The description of the flowlog.
  final pulumi.Input<String>? description;
  /// The name of the flowlog.
  final pulumi.Input<String>? flowLogName;
  /// The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: `60` or **600 * *. Default value: **600 * *.
  final pulumi.Input<int>? interval;
  /// Log Format
  final pulumi.Input<String>? logFormatString;
  /// The LogStore that stores the flowlog.
  final pulumi.Input<String>? logStoreName;
  /// The Project that stores the flowlog.
  final pulumi.Input<String>? projectName;
  /// region id
  final pulumi.Input<String>? regionId;
  /// The status of the flow log. Valid values:
  /// - `Active`: started.
  /// - `InActive`: not started.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Cross-region Connection ID or VBR connection ID.
  ///
  /// > **NOTE:**  This parameter is required.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// Transit Router ID
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [FlowLogState].
  /// [cenId] cen id
  /// [createTime] CreateTime
  /// [description] The description of the flowlog.
  /// [flowLogName] The name of the flowlog.
  /// [interval] The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: `60` or **600 * *. Default value: **600 * *.
  /// [logFormatString] Log Format
  /// [logStoreName] The LogStore that stores the flowlog.
  /// [projectName] The Project that stores the flowlog.
  /// [regionId] region id
  /// [status] The status of the flow log. Valid values:
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentId] Cross-region Connection ID or VBR connection ID.
  /// [transitRouterId] Transit Router ID
  FlowLogState({
    this.cenId,
    this.createTime,
    this.description,
    this.flowLogName,
    this.interval,
    this.logFormatString,
    this.logStoreName,
    this.projectName,
    this.regionId,
    this.status,
    this.tags,
    this.transitRouterAttachmentId,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'createTime': ?createTime,
      'description': ?description,
      'flowLogName': ?flowLogName,
      'interval': ?interval,
      'logFormatString': ?logFormatString,
      'logStoreName': ?logStoreName,
      'projectName': ?projectName,
      'regionId': ?regionId,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory FlowLogState.fromMap(Map<String, dynamic> map) {
    return FlowLogState(
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      flowLogName: map['flowLogName'] == null ? null : (map['flowLogName'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval'] as int).input(),
      logFormatString: map['logFormatString'] == null ? null : (map['logFormatString'] as String).input(),
      logStoreName: map['logStoreName'] == null ? null : (map['logStoreName'] as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId'] as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
    );
  }
}

