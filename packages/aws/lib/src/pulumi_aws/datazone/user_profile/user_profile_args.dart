// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_profile_timeouts/user_profile_timeouts.dart';

/// The set of arguments for UserProfile.
class UserProfileArgs {
  /// The domain identifier.
  final Input<String> domainIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The user profile status.
  final Input<String>? status;
  final Input<UserProfileTimeouts>? timeouts;

  /// The user identifier.
  ///
  /// The following arguments are optional:
  final Input<String> userIdentifier;

  /// The user type.
  final Input<String>? userType;

  UserProfileArgs({
    required this.domainIdentifier,
    this.region,
    this.status,
    this.timeouts,
    required this.userIdentifier,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainIdentifier'] = domainIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<UserProfileTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['userIdentifier'] = userIdentifier;
    final userTypeValue = userType;
    if (userTypeValue != null) {
      map['userType'] = userTypeValue;
    }
    return map;
  }

  factory UserProfileArgs.fromMap(Map<String, dynamic> map) {
    return UserProfileArgs(
      domainIdentifier: Input.asInput<String>(map['domainIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      status: Input.asOptionalInput<String>(map['status']),
      timeouts: Input.asOptionalInput<UserProfileTimeouts>(map['timeouts']),
      userIdentifier: Input.asInput<String>(map['userIdentifier']),
      userType: Input.asOptionalInput<String>(map['userType']),
    );
  }
}
