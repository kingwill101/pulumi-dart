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
    pulumi.Output<List<UserProfileDetail>>? details,
    pulumi.Output<String>? domainIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<UserProfileTimeouts>? timeouts,
    pulumi.Output<String>? type,
    pulumi.Output<String>? userIdentifier,
    pulumi.Output<String>? userType,
  }) :
      details = pulumi.Input.asOptionalInput<List<UserProfileDetail>>(details),
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      timeouts = pulumi.Input.asOptionalInput<UserProfileTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type),
      userIdentifier = pulumi.Input.asOptionalInput<String>(userIdentifier),
      userType = pulumi.Input.asOptionalInput<String>(userType);

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
      details: map['details'] == null ? null : pulumi.Output.create<List<UserProfileDetail>>(pulumi.Input.decodeList<UserProfileDetail>(map['details'], (value) => UserProfileDetail.fromMap((value as Map).cast<String, dynamic>()))),
      domainIdentifier: map['domainIdentifier'] == null ? null : pulumi.Output.create<String>(map['domainIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<UserProfileTimeouts>(UserProfileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      userIdentifier: map['userIdentifier'] == null ? null : pulumi.Output.create<String>(map['userIdentifier'] as String),
      userType: map['userType'] == null ? null : pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

