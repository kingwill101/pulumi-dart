// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_provision_profile.dart';
import 'user_details.dart';

/// Details for device provisioning.
class ProvisioningDetails {
  /// Operating system profile.
  final OsProvisionProfile osProfile;
  /// User configuration.
  final List<UserDetails>? userDetails;

  /// Creates a new [ProvisioningDetails].
  /// [osProfile] Operating system profile.
  /// [userDetails] User configuration.
  ProvisioningDetails({
    required this.osProfile,
    this.userDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osProfile': osProfile.toMap(),
      'userDetails': ?userDetails == null ? null : pulumi.Input.encodeList<UserDetails, Map<String, dynamic>>(userDetails!, (value) => value.toMap()),
    };
  }

  factory ProvisioningDetails.fromMap(Map<String, dynamic> map) {
    return ProvisioningDetails(
      osProfile: OsProvisionProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      userDetails: map['userDetails'] == null ? null : pulumi.Input.decodeList<UserDetails>(map['userDetails'], (value) => UserDetails.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

