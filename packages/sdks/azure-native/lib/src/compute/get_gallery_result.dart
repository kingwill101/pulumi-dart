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
  final String? azureApiVersion;
  /// The description of this Shared Image Gallery resource. This property is updatable.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Describes the gallery unique name.
  final GalleryIdentifierResponse? identifier;
  /// The identity of the gallery, if configured.
  final GalleryIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning state, which only appears in the response.
  final String? provisioningState;
  /// Profile for gallery sharing to subscription or tenant
  final SharingProfileResponse? sharingProfile;
  /// Sharing status of current gallery.
  final SharingStatusResponse? sharingStatus;
  /// Contains information about the soft deletion policy of the gallery.
  final SoftDeletePolicyResponse? softDeletePolicy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetGalleryResult({
    this.azureApiVersion,
    this.description,
    this.id,
    this.identifier,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.sharingProfile,
    this.sharingStatus,
    this.softDeletePolicy,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'identifier': ?identifier?.toMap(),
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sharingProfile': ?sharingProfile?.toMap(),
      'sharingStatus': ?sharingStatus?.toMap(),
      'softDeletePolicy': ?softDeletePolicy?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetGalleryResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return GalleryIdentifierResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return GalleryIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharingProfile: (() { final guardedValue = map['sharingProfile']; if (guardedValue == null) return null; return SharingProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sharingStatus: (() { final guardedValue = map['sharingStatus']; if (guardedValue == null) return null; return SharingStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      softDeletePolicy: (() { final guardedValue = map['softDeletePolicy']; if (guardedValue == null) return null; return SoftDeletePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
