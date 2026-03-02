// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'resource_model_with_allowed_property_set_response_identity.dart';
import 'resource_model_with_allowed_property_set_response_plan.dart';
import 'resource_model_with_allowed_property_set_response_sku.dart';
import 'system_data_response.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// List of applicationGroup resource Ids.
  final List<String>? applicationGroupReferences;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Is cloud pc resource.
  final bool cloudPcResource;
  /// Description of Workspace.
  final String? description;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String etag;
  /// Friendly name of Workspace.
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  final ResourceModelWithAllowedPropertySetResponseIdentity? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// The geo-location where the resource lives
  final String location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final String? managedBy;
  /// The name of the resource
  final String name;
  /// ObjectId of Workspace. (internal use)
  final String objectId;
  final ResourceModelWithAllowedPropertySetResponsePlan? plan;
  /// List of private endpoint connection associated with the specified resource
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  final String? publicNetworkAccess;
  final ResourceModelWithAllowedPropertySetResponseSku? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceResult].
  /// [applicationGroupReferences] List of applicationGroup resource Ids.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudPcResource] Is cloud pc resource.
  /// [description] Description of Workspace.
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [friendlyName] Friendly name of Workspace.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Optional.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [name] The name of the resource
  /// [objectId] ObjectId of Workspace. (internal use)
  /// [plan] Optional.
  /// [privateEndpointConnections] List of private endpoint connection associated with the specified resource
  /// [publicNetworkAccess] Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  /// [sku] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceResult({
    this.applicationGroupReferences,
    required this.azureApiVersion,
    required this.cloudPcResource,
    this.description,
    required this.etag,
    this.friendlyName,
    required this.id,
    this.identity,
    this.kind,
    required this.location,
    this.managedBy,
    required this.name,
    required this.objectId,
    this.plan,
    required this.privateEndpointConnections,
    this.publicNetworkAccess,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupReferences': ?applicationGroupReferences,
      'azureApiVersion': azureApiVersion,
      'cloudPcResource': cloudPcResource,
      'description': ?description,
      'etag': etag,
      'friendlyName': ?friendlyName,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': ?kind,
      'location': location,
      'managedBy': ?managedBy,
      'name': name,
      'objectId': objectId,
      'plan': ?plan == null ? null : plan!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      applicationGroupReferences: map['applicationGroupReferences'] == null ? null : (map['applicationGroupReferences']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      cloudPcResource: map['cloudPcResource'] as bool,
      description: map['description'] == null ? null : map['description']! as String,
      etag: map['etag'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ResourceModelWithAllowedPropertySetResponseIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy']! as String,
      name: map['name'] as String,
      objectId: map['objectId'] as String,
      plan: map['plan'] == null ? null : ResourceModelWithAllowedPropertySetResponsePlan.fromMap((map['plan']! as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      sku: map['sku'] == null ? null : ResourceModelWithAllowedPropertySetResponseSku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

