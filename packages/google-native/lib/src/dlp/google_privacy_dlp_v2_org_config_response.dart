// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_discovery_starting_location_response.dart';

/// Project and scan location information. Only set when the parent is an org.
class GooglePrivacyDlpV2OrgConfigResponse {
  /// The data to scan: folder, org, or project
  final GooglePrivacyDlpV2DiscoveryStartingLocationResponse location;
  /// The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the Cloud DLP API must be enabled.
  final String project;

  /// Creates a new [GooglePrivacyDlpV2OrgConfigResponse].
  /// [location] The data to scan: folder, org, or project
  /// [project] The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the Cloud DLP API must be enabled.
  GooglePrivacyDlpV2OrgConfigResponse({
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location.toMap(),
      'project': project,
    };
  }

  factory GooglePrivacyDlpV2OrgConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2OrgConfigResponse(
      location: GooglePrivacyDlpV2DiscoveryStartingLocationResponse.fromMap((map['location'] as Map).cast<String, dynamic>()),
      project: map['project'] as String,
    );
  }
}

