// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_detail.dart';
import 'user_profile_timeouts.dart';

/// Input properties used for looking up and filtering UserProfile resources.
class UserProfileState {
  /// Details about the user profile.
  final pulumi.Input<List<UserProfileDetail>>? details;
  /// The domain identifier.
  final pulumi.Input<String>? domainIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The user profile status.
  final pulumi.Input<String>? status;
  final pulumi.Input<UserProfileTimeouts>? timeouts;
  /// The user profile type.
  final pulumi.Input<String>? type;
  /// The user identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userIdentifier;
  /// The user type.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserProfileState].
  /// [details] Details about the user profile.
  /// [domainIdentifier] The domain identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The user profile status.
  /// [timeouts] Optional.
  /// [type] The user profile type.
  /// [userIdentifier] The user identifier.
  /// [userType] The user type.
  UserProfileState({
    this.details,
    this.domainIdentifier,
    this.region,
    this.status,
    this.timeouts,
    this.type,
    this.userIdentifier,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<List<UserProfileDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<UserProfileDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domainIdentifier': ?domainIdentifier,
      'region': ?region,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<UserProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'userIdentifier': ?userIdentifier,
      'userType': ?userType,
    };
  }

  factory UserProfileState.fromMap(Map<String, dynamic> map) {
    return UserProfileState(
      details: map['details'] == null ? null : ((pulumi.Input.decodeList<UserProfileDetail>(map['details']!, (value) => UserProfileDetail.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      domainIdentifier: map['domainIdentifier'] == null ? null : ((map['domainIdentifier'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((UserProfileTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      userIdentifier: map['userIdentifier'] == null ? null : ((map['userIdentifier'] as String).input()).input(),
      userType: map['userType'] == null ? null : ((map['userType'] as String).input()).input(),
    );
  }
}

