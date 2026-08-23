// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_application_version_publishing_profile_response.dart';
import 'gallery_application_version_safety_profile_response.dart';
import 'replication_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGalleryApplicationVersion.
class GetGalleryApplicationVersionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The publishing profile of a gallery image version.
  final GalleryApplicationVersionPublishingProfileResponse publishingProfile;
  /// This is the replication status of the gallery image version.
  final ReplicationStatusResponse replicationStatus;
  /// The safety profile of the Gallery Application Version.
  final GalleryApplicationVersionSafetyProfileResponse? safetyProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGalleryApplicationVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publishingProfile] The publishing profile of a gallery image version.
  /// [replicationStatus] This is the replication status of the gallery image version.
  /// [safetyProfile] The safety profile of the Gallery Application Version.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGalleryApplicationVersionResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.publishingProfile,
    required this.replicationStatus,
    this.safetyProfile,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'publishingProfile': publishingProfile.toMap(),
      'replicationStatus': replicationStatus.toMap(),
      'safetyProfile': ?safetyProfile?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetGalleryApplicationVersionResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryApplicationVersionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publishingProfile: GalleryApplicationVersionPublishingProfileResponse.fromMap((map['publishingProfile']! as Map).cast<String, dynamic>()),
      replicationStatus: ReplicationStatusResponse.fromMap((map['replicationStatus']! as Map).cast<String, dynamic>()),
      safetyProfile: (() { final guardedValue = map['safetyProfile']; if (guardedValue == null) return null; return GalleryApplicationVersionSafetyProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
