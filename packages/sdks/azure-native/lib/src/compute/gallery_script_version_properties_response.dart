// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_version_publishing_profile_response.dart';
import 'gallery_script_version_safety_profile_response.dart';
import 'replication_status_response.dart';

/// Describes the properties of a gallery script version.
class GalleryScriptVersionPropertiesResponse {
  /// The provisioning state, which only appears in the response.
  final pulumi.Input<String> provisioningState;
  /// The publishing profile of a gallery image version.
  final pulumi.Input<GalleryScriptVersionPublishingProfileResponse> publishingProfile;
  /// This is the replication status of the gallery image version.
  final pulumi.Input<ReplicationStatusResponse> replicationStatus;
  /// The safety profile of the Gallery Script Version.
  final pulumi.Input<GalleryScriptVersionSafetyProfileResponse>? safetyProfile;

  /// Creates a new [GalleryScriptVersionPropertiesResponse].
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publishingProfile] The publishing profile of a gallery image version.
  /// [replicationStatus] This is the replication status of the gallery image version.
  /// [safetyProfile] The safety profile of the Gallery Script Version.
  const GalleryScriptVersionPropertiesResponse({
    required this.provisioningState,
    required this.publishingProfile,
    required this.replicationStatus,
    this.safetyProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'publishingProfile': pulumi.Input.mapInputValue<GalleryScriptVersionPublishingProfileResponse, Map<String, dynamic>>(publishingProfile, (value) => value.toMap()),
      'replicationStatus': pulumi.Input.mapInputValue<ReplicationStatusResponse, Map<String, dynamic>>(replicationStatus, (value) => value.toMap()),
      'safetyProfile': ?pulumi.Input.mapOptionalInputValue<GalleryScriptVersionSafetyProfileResponse, Map<String, dynamic>>(safetyProfile, (value) => value.toMap()),
    };
  }

  factory GalleryScriptVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publishingProfile: pulumi.Input.fromValue(GalleryScriptVersionPublishingProfileResponse.fromMap((map['publishingProfile']! as Map).cast<String, dynamic>())),
      replicationStatus: pulumi.Input.fromValue(ReplicationStatusResponse.fromMap((map['replicationStatus']! as Map).cast<String, dynamic>())),
      safetyProfile: (() { final guardedValue = map['safetyProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryScriptVersionSafetyProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
