// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_identifier_response.dart';
import 'gallery_identity_response.dart';
import 'sharing_profile_response.dart';
import 'sharing_status_response.dart';
import 'soft_delete_policy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGallery.
class GetGalleryResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of this Shared Image Gallery resource. This property is updatable.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Describes the gallery unique name.
  final GalleryIdentifierResponse? identifier;
  /// The identity of the gallery, if configured.
  final GalleryIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// Profile for gallery sharing to subscription or tenant
  final SharingProfileResponse? sharingProfile;
  /// Sharing status of current gallery.
  final SharingStatusResponse sharingStatus;
  /// Contains information about the soft deletion policy of the gallery.
  final SoftDeletePolicyResponse? softDeletePolicy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGalleryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of this Shared Image Gallery resource. This property is updatable.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identifier] Describes the gallery unique name.
  /// [identity] The identity of the gallery, if configured.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [sharingProfile] Profile for gallery sharing to subscription or tenant
  /// [sharingStatus] Sharing status of current gallery.
  /// [softDeletePolicy] Contains information about the soft deletion policy of the gallery.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetGalleryResult({
    required this.azureApiVersion,
    this.description,
    required this.id,
    this.identifier,
    this.identity,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.sharingProfile,
    required this.sharingStatus,
    this.softDeletePolicy,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'id': id,
      'identifier': ?identifier == null ? null : identifier!.toMap(),
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sharingProfile': ?sharingProfile == null ? null : sharingProfile!.toMap(),
      'sharingStatus': sharingStatus.toMap(),
      'softDeletePolicy': ?softDeletePolicy == null ? null : softDeletePolicy!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetGalleryResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      identifier: map['identifier'] == null ? null : GalleryIdentifierResponse.fromMap((map['identifier'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : GalleryIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sharingProfile: map['sharingProfile'] == null ? null : SharingProfileResponse.fromMap((map['sharingProfile'] as Map).cast<String, dynamic>()),
      sharingStatus: SharingStatusResponse.fromMap((map['sharingStatus'] as Map).cast<String, dynamic>()),
      softDeletePolicy: map['softDeletePolicy'] == null ? null : SoftDeletePolicyResponse.fromMap((map['softDeletePolicy'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

