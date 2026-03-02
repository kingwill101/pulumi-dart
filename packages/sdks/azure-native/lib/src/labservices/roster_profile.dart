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
      activeDirectoryGroupId: map['activeDirectoryGroupId'] == null ? null : (map['activeDirectoryGroupId'] as String).input(),
      lmsInstance: map['lmsInstance'] == null ? null : (map['lmsInstance'] as String).input(),
      ltiClientId: map['ltiClientId'] == null ? null : (map['ltiClientId'] as String).input(),
      ltiContextId: map['ltiContextId'] == null ? null : (map['ltiContextId'] as String).input(),
      ltiRosterEndpoint: map['ltiRosterEndpoint'] == null ? null : (map['ltiRosterEndpoint'] as String).input(),
    );
  }
}

