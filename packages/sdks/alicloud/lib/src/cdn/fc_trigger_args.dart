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
    required this.eventMetaName,
    required this.eventMetaVersion,
    this.functionArn,
    required this.notes,
    required this.roleArn,
    required this.sourceArn,
    required this.triggerArn,
  });

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
      eventMetaName: pulumi.Input.fromValue(map['eventMetaName'] as String),
      eventMetaVersion: pulumi.Input.fromValue(
        map['eventMetaVersion'] as String,
      ),
      functionArn: (() {
        final guardedValue = map['functionArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notes: pulumi.Input.fromValue(map['notes'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      sourceArn: pulumi.Input.fromValue(map['sourceArn'] as String),
      triggerArn: pulumi.Input.fromValue(map['triggerArn'] as String),
    );
  }
}
