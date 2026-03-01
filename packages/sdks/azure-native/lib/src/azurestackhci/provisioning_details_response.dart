// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_provision_profile_response.dart';
import 'user_details_response.dart';

/// Details for device provisioning.
class ProvisioningDetailsResponse {
  /// Operating system profile.
  final OsProvisionProfileResponse osProfile;
  /// User configuration.
  final List<UserDetailsResponse>? userDetails;

  /// Creates a new [ProvisioningDetailsResponse].
  /// [osProfile] Operating system profile.
  /// [userDetails] User configuration.
  ProvisioningDetailsResponse({
    required this.osProfile,
    this.userDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osProfile': osProfile.toMap(),
      'userDetails': ?userDetails == null ? null : pulumi.Input.encodeList<UserDetailsResponse, Map<String, dynamic>>(userDetails!, (value) => value.toMap()),
    };
  }

  factory ProvisioningDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningDetailsResponse(
      osProfile: OsProvisionProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      userDetails: map['userDetails'] == null ? null : pulumi.Input.decodeList<UserDetailsResponse>(map['userDetails'], (value) => UserDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

