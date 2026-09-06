// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'project_catalog_settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProject.
class GetProjectResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Settings to be used when associating a project with a catalog.
  final ProjectCatalogSettingsResponse? catalogSettings;
  /// Description of the project.
  final String? description;
  /// Resource Id of an associated DevCenter
  final String? devCenterId;
  /// The URI of the Dev Center resource this project is associated with.
  final String? devCenterUri;
  /// The display name of the project.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Managed identity properties
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. This will have no effect on existing Dev Boxes when reduced.
  final int? maxDevBoxesPerUser;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetProjectResult({
    this.azureApiVersion,
    this.catalogSettings,
    this.description,
    this.devCenterId,
    this.devCenterUri,
    this.displayName,
    this.id,
    this.identity,
    this.location,
    this.maxDevBoxesPerUser,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'catalogSettings': ?catalogSettings?.toMap(),
      'description': ?description,
      'devCenterId': ?devCenterId,
      'devCenterUri': ?devCenterUri,
      'displayName': ?displayName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'maxDevBoxesPerUser': ?maxDevBoxesPerUser,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      catalogSettings: (() { final guardedValue = map['catalogSettings']; if (guardedValue == null) return null; return ProjectCatalogSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devCenterUri: (() { final guardedValue = map['devCenterUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxDevBoxesPerUser: (() { final guardedValue = map['maxDevBoxesPerUser']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
