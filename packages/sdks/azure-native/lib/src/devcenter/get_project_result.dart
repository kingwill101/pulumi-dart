// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'project_catalog_settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProject.
class GetProjectResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Settings to be used when associating a project with a catalog.
  final ProjectCatalogSettingsResponse? catalogSettings;
  /// Description of the project.
  final String? description;
  /// Resource Id of an associated DevCenter
  final String? devCenterId;
  /// The URI of the Dev Center resource this project is associated with.
  final String devCenterUri;
  /// The display name of the project.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed identity properties
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. This will have no effect on existing Dev Boxes when reduced.
  final int? maxDevBoxesPerUser;
  /// The name of the resource
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetProjectResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [catalogSettings] Settings to be used when associating a project with a catalog.
  /// [description] Description of the project.
  /// [devCenterId] Resource Id of an associated DevCenter
  /// [devCenterUri] The URI of the Dev Center resource this project is associated with.
  /// [displayName] The display name of the project.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed identity properties
  /// [location] The geo-location where the resource lives
  /// [maxDevBoxesPerUser] When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. This will have no effect on existing Dev Boxes when reduced.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetProjectResult({
    required this.azureApiVersion,
    this.catalogSettings,
    this.description,
    this.devCenterId,
    required this.devCenterUri,
    this.displayName,
    required this.id,
    this.identity,
    required this.location,
    this.maxDevBoxesPerUser,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'catalogSettings': ?catalogSettings == null ? null : catalogSettings!.toMap(),
      'description': ?description,
      'devCenterId': ?devCenterId,
      'devCenterUri': devCenterUri,
      'displayName': ?displayName,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'maxDevBoxesPerUser': ?maxDevBoxesPerUser,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      azureApiVersion: map['azureApiVersion'] as String,
      catalogSettings: map['catalogSettings'] == null ? null : ProjectCatalogSettingsResponse.fromMap((map['catalogSettings']! as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description']! as String,
      devCenterId: map['devCenterId'] == null ? null : map['devCenterId']! as String,
      devCenterUri: map['devCenterUri'] as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maxDevBoxesPerUser: map['maxDevBoxesPerUser'] == null ? null : map['maxDevBoxesPerUser']! as int,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

