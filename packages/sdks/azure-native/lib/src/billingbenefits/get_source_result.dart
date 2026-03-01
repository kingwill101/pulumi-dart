// ignore_for_file: unused_element, unnecessary_cast

import 'commitment_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSource.
class GetSourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Commitment towards the benefit.
  final CommitmentResponse? credit;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The billing period of the impact for the resource. Format YYYYMM
  final String? impactedBillingPeriod;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// The geo-location where the resource lives
  final String location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final String? managedBy;
  /// The name of the resource
  final String name;
  /// Plan for the resource.
  final PlanResponse? plan;
  /// The resource model definition representing SKU
  final SkuResponse? sku;
  /// The uri of the resource impacted which lead to the grant of the credit.
  final String? sourceResourceId;
  /// Status of the credit
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [credit] Commitment towards the benefit.
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [impactedBillingPeriod] The billing period of the impact for the resource. Format YYYYMM
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [name] The name of the resource
  /// [plan] Plan for the resource.
  /// [sku] The resource model definition representing SKU
  /// [sourceResourceId] The uri of the resource impacted which lead to the grant of the credit.
  /// [status] Status of the credit
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSourceResult({
    required this.azureApiVersion,
    this.credit,
    required this.etag,
    required this.id,
    this.identity,
    this.impactedBillingPeriod,
    this.kind,
    required this.location,
    this.managedBy,
    required this.name,
    this.plan,
    this.sku,
    this.sourceResourceId,
    this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'credit': ?credit == null ? null : credit!.toMap(),
      'etag': etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'impactedBillingPeriod': ?impactedBillingPeriod,
      'kind': ?kind,
      'location': location,
      'managedBy': ?managedBy,
      'name': name,
      'plan': ?plan == null ? null : plan!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'sourceResourceId': ?sourceResourceId,
      'status': ?status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSourceResult.fromMap(Map<String, dynamic> map) {
    return GetSourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      credit: map['credit'] == null ? null : CommitmentResponse.fromMap((map['credit'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      impactedBillingPeriod: map['impactedBillingPeriod'] == null ? null : map['impactedBillingPeriod'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      name: map['name'] as String,
      plan: map['plan'] == null ? null : PlanResponse.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

