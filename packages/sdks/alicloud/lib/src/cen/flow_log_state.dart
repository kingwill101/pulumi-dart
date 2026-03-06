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
  /// &gt; **NOTE:**  This parameter is required.
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
  const FlowLogState({
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
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowLogName: (() { final guardedValue = map['flowLogName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logFormatString: (() { final guardedValue = map['logFormatString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStoreName: (() { final guardedValue = map['logStoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitRouterAttachmentId: (() { final guardedValue = map['transitRouterAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

