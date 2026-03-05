// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The lab user list management profile.
class RosterProfile {
  /// The AAD group ID which this lab roster is populated from. Having this set enables AAD sync mode.
  final pulumi.Input<String>? activeDirectoryGroupId;
  /// The base URI identifying the lms instance.
  final pulumi.Input<String>? lmsInstance;
  /// The unique id of the azure lab services tool in the lms.
  final pulumi.Input<String>? ltiClientId;
  /// The unique context identifier for the lab in the lms.
  final pulumi.Input<String>? ltiContextId;
  /// The uri of the names and roles service endpoint on the lms for the class attached to this lab.
  final pulumi.Input<String>? ltiRosterEndpoint;

  /// Creates a new [RosterProfile].
  /// [activeDirectoryGroupId] The AAD group ID which this lab roster is populated from. Having this set enables AAD sync mode.
  /// [lmsInstance] The base URI identifying the lms instance.
  /// [ltiClientId] The unique id of the azure lab services tool in the lms.
  /// [ltiContextId] The unique context identifier for the lab in the lms.
  /// [ltiRosterEndpoint] The uri of the names and roles service endpoint on the lms for the class attached to this lab.
  RosterProfile({
    this.activeDirectoryGroupId,
    this.lmsInstance,
    this.ltiClientId,
    this.ltiContextId,
    this.ltiRosterEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryGroupId': ?activeDirectoryGroupId,
      'lmsInstance': ?lmsInstance,
      'ltiClientId': ?ltiClientId,
      'ltiContextId': ?ltiContextId,
      'ltiRosterEndpoint': ?ltiRosterEndpoint,
    };
  }

  factory RosterProfile.fromMap(Map<String, dynamic> map) {
    return RosterProfile(
      activeDirectoryGroupId: (() { final guardedValue = map['activeDirectoryGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lmsInstance: (() { final guardedValue = map['lmsInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ltiClientId: (() { final guardedValue = map['ltiClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ltiContextId: (() { final guardedValue = map['ltiContextId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ltiRosterEndpoint: (() { final guardedValue = map['ltiRosterEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

