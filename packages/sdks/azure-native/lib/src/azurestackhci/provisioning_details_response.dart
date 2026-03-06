// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_provision_profile_response.dart';
import 'user_details_response.dart';

/// Details for device provisioning.
class ProvisioningDetailsResponse {
  /// Operating system profile.
  final pulumi.Input<OsProvisionProfileResponse> osProfile;
  /// User configuration.
  final pulumi.Input<List<UserDetailsResponse>>? userDetails;

  /// Creates a new [ProvisioningDetailsResponse].
  /// [osProfile] Operating system profile.
  /// [userDetails] User configuration.
  const ProvisioningDetailsResponse({
    required this.osProfile,
    this.userDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osProfile': pulumi.Input.mapInputValue<OsProvisionProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'userDetails': ?pulumi.Input.mapOptionalInputValue<List<UserDetailsResponse>, List<Map<String, dynamic>>>(userDetails, (value) => pulumi.Input.encodeList<UserDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProvisioningDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningDetailsResponse(
      osProfile: pulumi.Input.fromValue(OsProvisionProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>())),
      userDetails: (() { final guardedValue = map['userDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserDetailsResponse>(guardedValue, (value) => UserDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

