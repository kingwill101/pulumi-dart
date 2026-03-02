// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_model_with_allowed_property_set_response_identity.dart';
import 'resource_model_with_allowed_property_set_response_plan.dart';
import 'resource_model_with_allowed_property_set_response_sku.dart';
import 'scaling_host_pool_reference_response.dart';
import 'scaling_schedule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getScalingPlan.
class GetScalingPlanResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of scaling plan.
  final String? description;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String etag;
  /// Exclusion tag for scaling plan.
  final String? exclusionTag;
  /// User friendly name of scaling plan.
  final String? friendlyName;
  /// List of ScalingHostPoolReference definitions.
  final List<ScalingHostPoolReferenceResponse>? hostPoolReferences;
  /// HostPool type for desktop.
  final String? hostPoolType;
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
  /// ObjectId of scaling plan. (internal use)
  final String objectId;
  final ResourceModelWithAllowedPropertySetResponsePlan? plan;
  /// List of ScalingPlanPooledSchedule definitions.
  final List<ScalingScheduleResponse>? schedules;
  final ResourceModelWithAllowedPropertySetResponseSku? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Timezone of the scaling plan.
  final String timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetScalingPlanResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of scaling plan.
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [exclusionTag] Exclusion tag for scaling plan.
  /// [friendlyName] User friendly name of scaling plan.
  /// [hostPoolReferences] List of ScalingHostPoolReference definitions.
  /// [hostPoolType] HostPool type for desktop.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Optional.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [name] The name of the resource
  /// [objectId] ObjectId of scaling plan. (internal use)
  /// [plan] Optional.
  /// [schedules] List of ScalingPlanPooledSchedule definitions.
  /// [sku] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeZone] Timezone of the scaling plan.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetScalingPlanResult({
    required this.azureApiVersion,
    this.description,
    required this.etag,
    this.exclusionTag,
    this.friendlyName,
    this.hostPoolReferences,
    this.hostPoolType,
    required this.id,
    this.identity,
    this.kind,
    required this.location,
    this.managedBy,
    required this.name,
    required this.objectId,
    this.plan,
    this.schedules,
    this.sku,
    required this.systemData,
    this.tags,
    required this.timeZone,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'exclusionTag': ?exclusionTag,
      'friendlyName': ?friendlyName,
      'hostPoolReferences': ?hostPoolReferences == null ? null : pulumi.Input.encodeList<ScalingHostPoolReferenceResponse, Map<String, dynamic>>(hostPoolReferences!, (value) => value.toMap()),
      'hostPoolType': ?hostPoolType,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': ?kind,
      'location': location,
      'managedBy': ?managedBy,
      'name': name,
      'objectId': objectId,
      'plan': ?plan == null ? null : plan!.toMap(),
      'schedules': ?schedules == null ? null : pulumi.Input.encodeList<ScalingScheduleResponse, Map<String, dynamic>>(schedules!, (value) => value.toMap()),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeZone': timeZone,
      'type': type,
    };
  }

  factory GetScalingPlanResult.fromMap(Map<String, dynamic> map) {
    return GetScalingPlanResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      etag: map['etag'] as String,
      exclusionTag: map['exclusionTag'] == null ? null : map['exclusionTag']! as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName']! as String,
      hostPoolReferences: map['hostPoolReferences'] == null ? null : pulumi.Input.decodeList<ScalingHostPoolReferenceResponse>(map['hostPoolReferences']!, (value) => ScalingHostPoolReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      hostPoolType: map['hostPoolType'] == null ? null : map['hostPoolType']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ResourceModelWithAllowedPropertySetResponseIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy']! as String,
      name: map['name'] as String,
      objectId: map['objectId'] as String,
      plan: map['plan'] == null ? null : ResourceModelWithAllowedPropertySetResponsePlan.fromMap((map['plan']! as Map).cast<String, dynamic>()),
      schedules: map['schedules'] == null ? null : pulumi.Input.decodeList<ScalingScheduleResponse>(map['schedules']!, (value) => ScalingScheduleResponse.fromMap((value as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : ResourceModelWithAllowedPropertySetResponseSku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      timeZone: map['timeZone'] as String,
      type: map['type'] as String,
    );
  }
}

