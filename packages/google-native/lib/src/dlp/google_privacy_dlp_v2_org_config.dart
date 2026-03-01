// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_discovery_starting_location.dart';

/// Project and scan location information. Only set when the parent is an org.
class GooglePrivacyDlpV2OrgConfig {
  /// The data to scan: folder, org, or project
  final GooglePrivacyDlpV2DiscoveryStartingLocation? location;

  /// The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the Cloud DLP API must be enabled.
  final String? project;

  /// Creates a new [GooglePrivacyDlpV2OrgConfig].
  /// [location] The data to scan: folder, org, or project
  /// [project] The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the Cloud DLP API must be enabled.
  GooglePrivacyDlpV2OrgConfig({this.location, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location == null ? null : location!.toMap(),
      'project': ?project,
    };
  }

  factory GooglePrivacyDlpV2OrgConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2OrgConfig(
      location: map['location'] == null
          ? null
          : GooglePrivacyDlpV2DiscoveryStartingLocation.fromMap(
              (map['location'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
