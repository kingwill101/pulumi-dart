// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_fc_trigger_fc_trigger_args_doc}
/// The set of arguments for FcTrigger.
/// {@endtemplate}
/// {@macro pulumi_cdn_fc_trigger_fc_trigger_args_doc}
class FcTriggerArgs {
  /// The name of the Event.
  final pulumi.Input<String> eventMetaName;
  /// The version of the Event.
  final pulumi.Input<String> eventMetaVersion;
  /// The function arn. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`.
  final pulumi.Input<String>? functionArn;
  /// The Note information.
  final pulumi.Input<String> notes;
  /// The role authorized by RAM. The value formats as `acs:ram::{AccountID}:role/{RoleName}`.
  final pulumi.Input<String> roleArn;
  /// Resources and filters for event listening. The value formats as `acs:cdn:{RegionID}:{AccountID}:{Filter}`.
  final pulumi.Input<String> sourceArn;
  /// The trigger corresponding to the function Compute Service. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`. See [Create a CDN Fc Trigger](https://www.alibabacloud.com/help/en/cdn/developer-reference/api-cdn-2018-05-10-addfctrigger) for more details.
  final pulumi.Input<String> triggerArn;

  /// Creates a new [FcTriggerArgs].
  /// [eventMetaName] The name of the Event.
  /// [eventMetaVersion] The version of the Event.
  /// [functionArn] The function arn. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`.
  /// [notes] The Note information.
  /// [roleArn] The role authorized by RAM. The value formats as `acs:ram::{AccountID}:role/{RoleName}`.
  /// [sourceArn] Resources and filters for event listening. The value formats as `acs:cdn:{RegionID}:{AccountID}:{Filter}`.
  /// [triggerArn] The trigger corresponding to the function Compute Service. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`. See [Create a CDN Fc Trigger](https://www.alibabacloud.com/help/en/cdn/developer-reference/api-cdn-2018-05-10-addfctrigger) for more details.
  FcTriggerArgs({
    required pulumi.Output<String> eventMetaName,
    required pulumi.Output<String> eventMetaVersion,
    pulumi.Output<String>? functionArn,
    required pulumi.Output<String> notes,
    required pulumi.Output<String> roleArn,
    required pulumi.Output<String> sourceArn,
    required pulumi.Output<String> triggerArn,
  }) :
      eventMetaName = pulumi.Input.asInput<String>(eventMetaName),
      eventMetaVersion = pulumi.Input.asInput<String>(eventMetaVersion),
      functionArn = pulumi.Input.asOptionalInput<String>(functionArn),
      notes = pulumi.Input.asInput<String>(notes),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      sourceArn = pulumi.Input.asInput<String>(sourceArn),
      triggerArn = pulumi.Input.asInput<String>(triggerArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventMetaName': eventMetaName,
      'eventMetaVersion': eventMetaVersion,
      'functionArn': ?functionArn,
      'notes': notes,
      'roleArn': roleArn,
      'sourceArn': sourceArn,
      'triggerArn': triggerArn,
    };
  }

  factory FcTriggerArgs.fromMap(Map<String, dynamic> map) {
    return FcTriggerArgs(
      eventMetaName: pulumi.Output.create<String>(map['eventMetaName'] as String),
      eventMetaVersion: pulumi.Output.create<String>(map['eventMetaVersion'] as String),
      functionArn: map['functionArn'] == null ? null : pulumi.Output.create<String>(map['functionArn'] as String),
      notes: pulumi.Output.create<String>(map['notes'] as String),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
      sourceArn: pulumi.Output.create<String>(map['sourceArn'] as String),
      triggerArn: pulumi.Output.create<String>(map['triggerArn'] as String),
    );
  }
}

