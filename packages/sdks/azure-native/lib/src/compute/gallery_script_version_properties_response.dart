// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_script_version_publishing_profile_response.dart';
import 'gallery_script_version_safety_profile_response.dart';
import 'replication_status_response.dart';

/// Describes the properties of a gallery script version.
class GalleryScriptVersionPropertiesResponse {
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The publishing profile of a gallery image version.
  final GalleryScriptVersionPublishingProfileResponse publishingProfile;
  /// This is the replication status of the gallery image version.
  final ReplicationStatusResponse replicationStatus;
  /// The safety profile of the Gallery Script Version.
  final GalleryScriptVersionSafetyProfileResponse? safetyProfile;

  /// Creates a new [GalleryScriptVersionPropertiesResponse].
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publishingProfile] The publishing profile of a gallery image version.
  /// [replicationStatus] This is the replication status of the gallery image version.
  /// [safetyProfile] The safety profile of the Gallery Script Version.
  GalleryScriptVersionPropertiesResponse({
    required this.provisioningState,
    required this.publishingProfile,
    required this.replicationStatus,
    this.safetyProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'publishingProfile': publishingProfile.toMap(),
      'replicationStatus': replicationStatus.toMap(),
      'safetyProfile': ?safetyProfile == null ? null : safetyProfile!.toMap(),
    };
  }

  factory GalleryScriptVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      publishingProfile: GalleryScriptVersionPublishingProfileResponse.fromMap((map['publishingProfile'] as Map).cast<String, dynamic>()),
      replicationStatus: ReplicationStatusResponse.fromMap((map['replicationStatus'] as Map).cast<String, dynamic>()),
      safetyProfile: map['safetyProfile'] == null ? null : GalleryScriptVersionSafetyProfileResponse.fromMap((map['safetyProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

