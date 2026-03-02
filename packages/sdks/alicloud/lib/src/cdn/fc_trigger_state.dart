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
    this.eventMetaName,
    this.eventMetaVersion,
    this.functionArn,
    this.notes,
    this.roleArn,
    this.sourceArn,
    this.triggerArn,
  });

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
      eventMetaName: map['eventMetaName'] == null ? null : (map['eventMetaName'] as String).input(),
      eventMetaVersion: map['eventMetaVersion'] == null ? null : (map['eventMetaVersion'] as String).input(),
      functionArn: map['functionArn'] == null ? null : (map['functionArn'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      sourceArn: map['sourceArn'] == null ? null : (map['sourceArn'] as String).input(),
      triggerArn: map['triggerArn'] == null ? null : (map['triggerArn'] as String).input(),
    );
  }
}

