// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_flow_log_flow_log_args_doc}
/// The set of arguments for FlowLog.
/// {@endtemplate}
/// {@macro pulumi_cen_flow_log_flow_log_args_doc}
class FlowLogArgs {
  /// cen id
  final pulumi.Input<String> cenId;
  /// The description of the flowlog.
  final pulumi.Input<String>? description;
  /// The name of the flowlog.
  final pulumi.Input<String>? flowLogName;
  /// The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: `60` or **600 * *. Default value: **600 * *.
  final pulumi.Input<int>? interval;
  /// Log Format
  final pulumi.Input<String>? logFormatString;
  /// The LogStore that stores the flowlog.
  final pulumi.Input<String> logStoreName;
  /// The Project that stores the flowlog.
  final pulumi.Input<String> projectName;
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

  /// Creates a new [FlowLogArgs].
  /// [cenId] cen id
  /// [description] The description of the flowlog.
  /// [flowLogName] The name of the flowlog.
  /// [interval] The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: `60` or **600 * *. Default value: **600 * *.
  /// [logFormatString] Log Format
  /// [logStoreName] The LogStore that stores the flowlog.
  /// [projectName] The Project that stores the flowlog.
  /// [status] The status of the flow log. Valid values:
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentId] Cross-region Connection ID or VBR connection ID.
  /// [transitRouterId] Transit Router ID
  FlowLogArgs({
    required String cenId,
    String? description,
    String? flowLogName,
    int? interval,
    String? logFormatString,
    required String logStoreName,
    required String projectName,
    String? status,
    Map<String, String>? tags,
    String? transitRouterAttachmentId,
    String? transitRouterId,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      description = pulumi.Input.asOptionalInput<String>(description),
      flowLogName = pulumi.Input.asOptionalInput<String>(flowLogName),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      logFormatString = pulumi.Input.asOptionalInput<String>(logFormatString),
      logStoreName = pulumi.Input.asInput<String>(logStoreName),
      projectName = pulumi.Input.asInput<String>(projectName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'description': ?description,
      'flowLogName': ?flowLogName,
      'interval': ?interval,
      'logFormatString': ?logFormatString,
      'logStoreName': logStoreName,
      'projectName': projectName,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory FlowLogArgs.fromMap(Map<String, dynamic> map) {
    return FlowLogArgs(
      cenId: map['cenId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      flowLogName: map['flowLogName'] == null ? null : map['flowLogName'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      logFormatString: map['logFormatString'] == null ? null : map['logFormatString'] as String,
      logStoreName: map['logStoreName'] as String,
      projectName: map['projectName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : map['transitRouterAttachmentId'] as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId'] as String,
    );
  }
}

