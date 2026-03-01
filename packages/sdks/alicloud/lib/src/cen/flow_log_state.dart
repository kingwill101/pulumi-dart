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
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? flowLogName,
    pulumi.Output<int>? interval,
    pulumi.Output<String>? logFormatString,
    pulumi.Output<String>? logStoreName,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      flowLogName = pulumi.Input.asOptionalInput<String>(flowLogName),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      logFormatString = pulumi.Input.asOptionalInput<String>(logFormatString),
      logStoreName = pulumi.Input.asOptionalInput<String>(logStoreName),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

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
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      flowLogName: map['flowLogName'] == null ? null : pulumi.Output.create<String>(map['flowLogName'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<int>(map['interval'] as int),
      logFormatString: map['logFormatString'] == null ? null : pulumi.Output.create<String>(map['logFormatString'] as String),
      logStoreName: map['logStoreName'] == null ? null : pulumi.Output.create<String>(map['logStoreName'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

