// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_image_version_publishing_profile_response.dart';
import 'gallery_image_version_safety_profile_response.dart';
import 'gallery_image_version_storage_profile_response.dart';
import 'image_version_security_profile_response.dart';
import 'replication_status_response.dart';
import 'system_data_response.dart';
import 'validations_profile_response.dart';

/// Result data returned by getGalleryImageVersion.
class GetGalleryImageVersionResult {
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

  /// The publishing profile of a gallery image Version.
  final GalleryImageVersionPublishingProfileResponse? publishingProfile;

  /// This is the replication status of the gallery image version.
  final ReplicationStatusResponse replicationStatus;

  /// Indicates if this is a soft-delete resource restoration request.
  final bool? restore;

  /// This is the safety profile of the Gallery Image Version.
  final GalleryImageVersionSafetyProfileResponse? safetyProfile;

  /// The security profile of a gallery image version
  final ImageVersionSecurityProfileResponse? securityProfile;

  /// This is the storage profile of a Gallery Image Version.
  final GalleryImageVersionStorageProfileResponse storageProfile;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// This is the validations profile of a Gallery Image Version.
  final ValidationsProfileResponse validationsProfile;

  /// Creates a new [GetGalleryImageVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publishingProfile] The publishing profile of a gallery image Version.
  /// [replicationStatus] This is the replication status of the gallery image version.
  /// [restore] Indicates if this is a soft-delete resource restoration request.
  /// [safetyProfile] This is the safety profile of the Gallery Image Version.
  /// [securityProfile] The security profile of a gallery image version
  /// [storageProfile] This is the storage profile of a Gallery Image Version.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationsProfile] This is the validations profile of a Gallery Image Version.
  GetGalleryImageVersionResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.publishingProfile,
    required this.replicationStatus,
    this.restore,
    this.safetyProfile,
    this.securityProfile,
    required this.storageProfile,
    required this.systemData,
    this.tags,
    required this.type,
    required this.validationsProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'publishingProfile': ?publishingProfile?.toMap(),
      'replicationStatus': replicationStatus.toMap(),
      'restore': ?restore,
      'safetyProfile': ?safetyProfile?.toMap(),
      'securityProfile': ?securityProfile?.toMap(),
      'storageProfile': storageProfile.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'validationsProfile': validationsProfile.toMap(),
    };
  }

  factory GetGalleryImageVersionResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryImageVersionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publishingProfile: (() {
        final guardedValue = map['publishingProfile'];
        if (guardedValue == null) return null;
        return GalleryImageVersionPublishingProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      replicationStatus: ReplicationStatusResponse.fromMap(
        (map['replicationStatus']! as Map).cast<String, dynamic>(),
      ),
      restore: (() {
        final guardedValue = map['restore'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      safetyProfile: (() {
        final guardedValue = map['safetyProfile'];
        if (guardedValue == null) return null;
        return GalleryImageVersionSafetyProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      securityProfile: (() {
        final guardedValue = map['securityProfile'];
        if (guardedValue == null) return null;
        return ImageVersionSecurityProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      storageProfile: GalleryImageVersionStorageProfileResponse.fromMap(
        (map['storageProfile']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      validationsProfile: ValidationsProfileResponse.fromMap(
        (map['validationsProfile']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
