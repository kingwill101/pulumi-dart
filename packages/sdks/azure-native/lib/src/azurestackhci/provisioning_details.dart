// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_provision_profile.dart';
import 'user_details.dart';

/// Details for device provisioning.
class ProvisioningDetails {
  /// Operating system profile.
  final pulumi.Input<OsProvisionProfile> osProfile;
  /// User configuration.
  final pulumi.Input<List<UserDetails>>? userDetails;

  /// Creates a new [ProvisioningDetails].
  /// [osProfile] Operating system profile.
  /// [userDetails] User configuration.
  ProvisioningDetails({
    required this.osProfile,
    this.userDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osProfile': pulumi.Input.mapInputValue<OsProvisionProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'userDetails': ?pulumi.Input.mapOptionalInputValue<List<UserDetails>, List<Map<String, dynamic>>>(userDetails, (value) => pulumi.Input.encodeList<UserDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProvisioningDetails.fromMap(Map<String, dynamic> map) {
    return ProvisioningDetails(
      osProfile: (OsProvisionProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      userDetails: map['userDetails'] == null ? null : (pulumi.Input.decodeList<UserDetails>(map['userDetails']!, (value) => UserDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

