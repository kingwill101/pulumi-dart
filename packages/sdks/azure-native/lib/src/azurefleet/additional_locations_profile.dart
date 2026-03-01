// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_profile.dart';

/// Represents the configuration for additional locations where Fleet resources may be deployed.
class AdditionalLocationsProfile {
  /// The list of location profiles.
  final List<LocationProfile> locationProfiles;

  /// Creates a new [AdditionalLocationsProfile].
  /// [locationProfiles] The list of location profiles.
  AdditionalLocationsProfile({
    required this.locationProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationProfiles': pulumi.Input.encodeList<LocationProfile, Map<String, dynamic>>(locationProfiles, (value) => value.toMap()),
    };
  }

  factory AdditionalLocationsProfile.fromMap(Map<String, dynamic> map) {
    return AdditionalLocationsProfile(
      locationProfiles: pulumi.Input.decodeList<LocationProfile>(map['locationProfiles'], (value) => LocationProfile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

