// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_profile_response.dart';

/// Represents the configuration for additional locations where Fleet resources may be deployed.
class AdditionalLocationsProfileResponse {
  /// The list of location profiles.
  final pulumi.Input<List<LocationProfileResponse>> locationProfiles;

  /// Creates a new [AdditionalLocationsProfileResponse].
  /// [locationProfiles] The list of location profiles.
  AdditionalLocationsProfileResponse({
    required this.locationProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationProfiles': pulumi.Input.mapInputValue<List<LocationProfileResponse>, List<Map<String, dynamic>>>(locationProfiles, (value) => pulumi.Input.encodeList<LocationProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AdditionalLocationsProfileResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalLocationsProfileResponse(
      locationProfiles: (pulumi.Input.decodeList<LocationProfileResponse>(map['locationProfiles'], (value) => LocationProfileResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

