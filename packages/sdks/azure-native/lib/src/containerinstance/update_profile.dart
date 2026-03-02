// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_profile_rolling_update_profile.dart';

/// Used by the customer to specify the way to update the Container Groups in NGroup.
class UpdateProfile {
  /// This profile allows the customers to customize the rolling update.
  final pulumi.Input<UpdateProfileRollingUpdateProfile>? rollingUpdateProfile;
  final pulumi.Input<String>? updateMode;

  /// Creates a new [UpdateProfile].
  /// [rollingUpdateProfile] This profile allows the customers to customize the rolling update.
  /// [updateMode] Optional.
  UpdateProfile({
    this.rollingUpdateProfile,
    this.updateMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdateProfile': ?pulumi.Input.mapOptionalInputValue<UpdateProfileRollingUpdateProfile, Map<String, dynamic>>(rollingUpdateProfile, (value) => value.toMap()),
      'updateMode': ?updateMode,
    };
  }

  factory UpdateProfile.fromMap(Map<String, dynamic> map) {
    return UpdateProfile(
      rollingUpdateProfile: map['rollingUpdateProfile'] == null ? null : (UpdateProfileRollingUpdateProfile.fromMap((map['rollingUpdateProfile'] as Map).cast<String, dynamic>())).input(),
      updateMode: map['updateMode'] == null ? null : (map['updateMode'] as String).input(),
    );
  }
}

