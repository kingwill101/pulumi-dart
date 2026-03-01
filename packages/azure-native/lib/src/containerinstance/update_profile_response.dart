// ignore_for_file: unused_element, unnecessary_cast

import 'update_profile_response_rolling_update_profile.dart';

/// Used by the customer to specify the way to update the Container Groups in NGroup.
class UpdateProfileResponse {
  /// This profile allows the customers to customize the rolling update.
  final UpdateProfileResponseRollingUpdateProfile? rollingUpdateProfile;
  final String? updateMode;

  /// Creates a new [UpdateProfileResponse].
  /// [rollingUpdateProfile] This profile allows the customers to customize the rolling update.
  /// [updateMode] Optional.
  UpdateProfileResponse({
    this.rollingUpdateProfile,
    this.updateMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdateProfile': ?rollingUpdateProfile == null ? null : rollingUpdateProfile!.toMap(),
      'updateMode': ?updateMode,
    };
  }

  factory UpdateProfileResponse.fromMap(Map<String, dynamic> map) {
    return UpdateProfileResponse(
      rollingUpdateProfile: map['rollingUpdateProfile'] == null ? null : UpdateProfileResponseRollingUpdateProfile.fromMap((map['rollingUpdateProfile'] as Map).cast<String, dynamic>()),
      updateMode: map['updateMode'] == null ? null : map['updateMode'] as String,
    );
  }
}

