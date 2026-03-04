// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_timeouts.dart';

/// {@template pulumi_datazone_user_profile_user_profile_args_doc}
/// The set of arguments for UserProfile.
/// {@endtemplate}
/// {@macro pulumi_datazone_user_profile_user_profile_args_doc}
class UserProfileArgs {
  /// The domain identifier.
  final pulumi.Input<String> domainIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The user profile status.
  final pulumi.Input<String>? status;
  final pulumi.Input<UserProfileTimeouts>? timeouts;

  /// The user identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userIdentifier;

  /// The user type.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserProfileArgs].
  /// [domainIdentifier] The domain identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The user profile status.
  /// [timeouts] Optional.
  /// [userIdentifier] The user identifier.
  /// [userType] The user type.
  UserProfileArgs({
    required this.domainIdentifier,
    this.region,
    this.status,
    this.timeouts,
    required this.userIdentifier,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainIdentifier': domainIdentifier,
      'region': ?region,
      'status': ?status,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            UserProfileTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'userIdentifier': userIdentifier,
      'userType': ?userType,
    };
  }

  factory UserProfileArgs.fromMap(Map<String, dynamic> map) {
    return UserProfileArgs(
      domainIdentifier: pulumi.Input.fromValue(
        map['domainIdentifier'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserProfileTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userIdentifier: pulumi.Input.fromValue(map['userIdentifier'] as String),
      userType: (() {
        final guardedValue = map['userType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
