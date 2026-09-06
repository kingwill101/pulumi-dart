// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_profile_rolling_update_profile_response.dart';

/// Used by the customer to specify the way to update the Container Groups in NGroup.
class UpdateProfileResponse {
  /// This profile allows the customers to customize the rolling update.
  final pulumi.Input<UpdateProfileRollingUpdateProfileResponse?>? rollingUpdateProfile;
  final pulumi.Input<String?>? updateMode;

  /// Creates a new [UpdateProfileResponse].
  /// [rollingUpdateProfile] This profile allows the customers to customize the rolling update.
  /// [updateMode] Optional.
  const UpdateProfileResponse({
    this.rollingUpdateProfile,
    this.updateMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdateProfile': ?pulumi.Input.mapOptionalInputValue<UpdateProfileRollingUpdateProfileResponse, Map<String, dynamic>>(rollingUpdateProfile, (value) => value.toMap()),
      'updateMode': ?updateMode,
    };
  }

  factory UpdateProfileResponse.fromMap(Map<String, dynamic> map) {
    return UpdateProfileResponse(
      rollingUpdateProfile: (() { final guardedValue = map['rollingUpdateProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpdateProfileRollingUpdateProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateMode: (() { final guardedValue = map['updateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
