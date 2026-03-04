// ignore_for_file: unused_element, unnecessary_cast

import 'resource_model_with_allowed_property_set_response_identity.dart';
import 'resource_model_with_allowed_property_set_response_plan.dart';
import 'resource_model_with_allowed_property_set_response_sku.dart';
import 'system_data_response.dart';

/// Result data returned by getApplicationGroup.
class GetApplicationGroupResult {
  /// Resource Type of ApplicationGroup.
  final String applicationGroupType;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Is cloud pc resource.
  final bool cloudPcResource;

  /// Description of ApplicationGroup.
  final String? description;

  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String etag;

  /// Friendly name of ApplicationGroup.
  final String? friendlyName;

  /// HostPool arm path of ApplicationGroup.
  final String hostPoolArmPath;

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

  /// ObjectId of ApplicationGroup. (internal use)
  final String objectId;
  final ResourceModelWithAllowedPropertySetResponsePlan? plan;

  /// Boolean representing whether the applicationGroup is show in the feed.
  final bool? showInFeed;
  final ResourceModelWithAllowedPropertySetResponseSku? sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Workspace arm path of ApplicationGroup.
  final String workspaceArmPath;

  /// Creates a new [GetApplicationGroupResult].
  /// [applicationGroupType] Resource Type of ApplicationGroup.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudPcResource] Is cloud pc resource.
  /// [description] Description of ApplicationGroup.
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [friendlyName] Friendly name of ApplicationGroup.
  /// [hostPoolArmPath] HostPool arm path of ApplicationGroup.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Optional.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [name] The name of the resource
  /// [objectId] ObjectId of ApplicationGroup. (internal use)
  /// [plan] Optional.
  /// [showInFeed] Boolean representing whether the applicationGroup is show in the feed.
  /// [sku] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workspaceArmPath] Workspace arm path of ApplicationGroup.
  GetApplicationGroupResult({
    required this.applicationGroupType,
    required this.azureApiVersion,
    required this.cloudPcResource,
    this.description,
    required this.etag,
    this.friendlyName,
    required this.hostPoolArmPath,
    required this.id,
    this.identity,
    this.kind,
    required this.location,
    this.managedBy,
    required this.name,
    required this.objectId,
    this.plan,
    this.showInFeed,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
    required this.workspaceArmPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupType': applicationGroupType,
      'azureApiVersion': azureApiVersion,
      'cloudPcResource': cloudPcResource,
      'description': ?description,
      'etag': etag,
      'friendlyName': ?friendlyName,
      'hostPoolArmPath': hostPoolArmPath,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': location,
      'managedBy': ?managedBy,
      'name': name,
      'objectId': objectId,
      'plan': ?plan?.toMap(),
      'showInFeed': ?showInFeed,
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'workspaceArmPath': workspaceArmPath,
    };
  }

  factory GetApplicationGroupResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupResult(
      applicationGroupType: map['applicationGroupType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      cloudPcResource: map['cloudPcResource'] as bool,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: map['etag'] as String,
      friendlyName: (() {
        final guardedValue = map['friendlyName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      hostPoolArmPath: map['hostPoolArmPath'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return ResourceModelWithAllowedPropertySetResponseIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      managedBy: (() {
        final guardedValue = map['managedBy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      objectId: map['objectId'] as String,
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return ResourceModelWithAllowedPropertySetResponsePlan.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      showInFeed: (() {
        final guardedValue = map['showInFeed'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return ResourceModelWithAllowedPropertySetResponseSku.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      workspaceArmPath: map['workspaceArmPath'] as String,
    );
  }
}
