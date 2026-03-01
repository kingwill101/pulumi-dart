// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_org_config_location.dart';

class PreventionDiscoveryConfigOrgConfig {
  /// The data to scan folder org or project
  /// Structure is documented below.
  final PreventionDiscoveryConfigOrgConfigLocation? location;

  /// The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the cloud DLP API must be enabled.
  final String? projectId;

  /// Creates a new [PreventionDiscoveryConfigOrgConfig].
  /// [location] The data to scan folder org or project
  /// [projectId] The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the cloud DLP API must be enabled.
  PreventionDiscoveryConfigOrgConfig({this.location, this.projectId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location == null ? null : location!.toMap(),
      'projectId': ?projectId,
    };
  }

  factory PreventionDiscoveryConfigOrgConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigOrgConfig(
      location: map['location'] == null
          ? null
          : PreventionDiscoveryConfigOrgConfigLocation.fromMap(
              (map['location'] as Map).cast<String, dynamic>(),
            ),
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
