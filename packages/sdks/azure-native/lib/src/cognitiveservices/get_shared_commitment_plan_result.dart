// ignore_for_file: unused_element, unnecessary_cast

import 'commitment_plan_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSharedCommitmentPlan.
class GetSharedCommitmentPlanResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Etag.
  final String etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The Kind of the resource.
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Properties of Cognitive Services account commitment plan.
  final CommitmentPlanPropertiesResponse properties;
  /// The resource model definition representing SKU
  final SkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSharedCommitmentPlanResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource Etag.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] The Kind of the resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [properties] Properties of Cognitive Services account commitment plan.
  /// [sku] The resource model definition representing SKU
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSharedCommitmentPlanResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    this.kind,
    this.location,
    required this.name,
    required this.properties,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSharedCommitmentPlanResult.fromMap(Map<String, dynamic> map) {
    return GetSharedCommitmentPlanResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      properties: CommitmentPlanPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

