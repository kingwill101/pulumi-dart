// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FcTrigger resources.
class FcTriggerState {
  /// The name of the Event.
  final pulumi.Input<String>? eventMetaName;
  /// The version of the Event.
  final pulumi.Input<String>? eventMetaVersion;
  /// The function arn. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`.
  final pulumi.Input<String>? functionArn;
  /// The Note information.
  final pulumi.Input<String>? notes;
  /// The role authorized by RAM. The value formats as `acs:ram::{AccountID}:role/{RoleName}`.
  final pulumi.Input<String>? roleArn;
  /// Resources and filters for event listening. The value formats as `acs:cdn:{RegionID}:{AccountID}:{Filter}`.
  final pulumi.Input<String>? sourceArn;
  /// The trigger corresponding to the function Compute Service. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`. See [Create a CDN Fc Trigger](https://www.alibabacloud.com/help/en/cdn/developer-reference/api-cdn-2018-05-10-addfctrigger) for more details.
  final pulumi.Input<String>? triggerArn;

  /// Creates a new [FcTriggerState].
  /// [eventMetaName] The name of the Event.
  /// [eventMetaVersion] The version of the Event.
  /// [functionArn] The function arn. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`.
  /// [notes] The Note information.
  /// [roleArn] The role authorized by RAM. The value formats as `acs:ram::{AccountID}:role/{RoleName}`.
  /// [sourceArn] Resources and filters for event listening. The value formats as `acs:cdn:{RegionID}:{AccountID}:{Filter}`.
  /// [triggerArn] The trigger corresponding to the function Compute Service. The value formats as `acs:fc:{RegionID}:{AccountID}:{Filter}`. See [Create a CDN Fc Trigger](https://www.alibabacloud.com/help/en/cdn/developer-reference/api-cdn-2018-05-10-addfctrigger) for more details.
  FcTriggerState({
    pulumi.Output<String>? eventMetaName,
    pulumi.Output<String>? eventMetaVersion,
    pulumi.Output<String>? functionArn,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? sourceArn,
    pulumi.Output<String>? triggerArn,
  }) :
      eventMetaName = pulumi.Input.asOptionalInput<String>(eventMetaName),
      eventMetaVersion = pulumi.Input.asOptionalInput<String>(eventMetaVersion),
      functionArn = pulumi.Input.asOptionalInput<String>(functionArn),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      sourceArn = pulumi.Input.asOptionalInput<String>(sourceArn),
      triggerArn = pulumi.Input.asOptionalInput<String>(triggerArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventMetaName': ?eventMetaName,
      'eventMetaVersion': ?eventMetaVersion,
      'functionArn': ?functionArn,
      'notes': ?notes,
      'roleArn': ?roleArn,
      'sourceArn': ?sourceArn,
      'triggerArn': ?triggerArn,
    };
  }

  factory FcTriggerState.fromMap(Map<String, dynamic> map) {
    return FcTriggerState(
      eventMetaName: map['eventMetaName'] == null ? null : pulumi.Output.create<String>(map['eventMetaName'] as String),
      eventMetaVersion: map['eventMetaVersion'] == null ? null : pulumi.Output.create<String>(map['eventMetaVersion'] as String),
      functionArn: map['functionArn'] == null ? null : pulumi.Output.create<String>(map['functionArn'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      sourceArn: map['sourceArn'] == null ? null : pulumi.Output.create<String>(map['sourceArn'] as String),
      triggerArn: map['triggerArn'] == null ? null : pulumi.Output.create<String>(map['triggerArn'] as String),
    );
  }
}

