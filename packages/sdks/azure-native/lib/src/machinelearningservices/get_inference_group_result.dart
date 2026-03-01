// ignore_for_file: unused_element, unnecessary_cast

import 'inference_group_response.dart';
import 'managed_service_identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInferenceGroup.
class GetInferenceGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// [Required] Additional attributes of the entity.
  final InferenceGroupResponse inferenceGroupProperties;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final String? kind;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Sku details required for ARM contract for Autoscaling.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetInferenceGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [inferenceGroupProperties] [Required] Additional attributes of the entity.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetInferenceGroupResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.inferenceGroupProperties,
    this.kind,
    required this.location,
    required this.name,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inferenceGroupProperties': inferenceGroupProperties.toMap(),
      'kind': ?kind,
      'location': location,
      'name': name,
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetInferenceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      inferenceGroupProperties: InferenceGroupResponse.fromMap((map['inferenceGroupProperties'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

