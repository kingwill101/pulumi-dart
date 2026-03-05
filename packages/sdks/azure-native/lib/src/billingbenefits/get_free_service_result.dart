// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFreeService.
class GetFreeServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Billing account resource id where the free services metadata is present.
  final String billingAccountResourceId;
  /// Billing profile resource id where the free services are scoped to.
  final String billingProfileResourceId;
  /// Customer resource id where the free services are scoped to.
  final String customerResourceId;
  /// Expiration date and time of the free services
  final String? endAt;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
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
  /// This is the catalog UPN for the product.
  final String? productCode;
  /// Provisioning state of Free Services as assigned by RPaaS. This indicates the last operation's status. For all practical purposes, this can be ignored. For current status of Free Services resource, refer to FreeServicesStatus.
  final String provisioningState;
  /// The resource model definition representing SKU
  final SkuResponse? sku;
  /// Date and time when the free services become active
  final String? startAt;
  /// Current status of the free services
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// This is the globally unique identifier of the free services which will not change for its lifetime.
  final String? systemId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFreeServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingAccountResourceId] Billing account resource id where the free services metadata is present.
  /// [billingProfileResourceId] Billing profile resource id where the free services are scoped to.
  /// [customerResourceId] Customer resource id where the free services are scoped to.
  /// [endAt] Expiration date and time of the free services
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [name] The name of the resource
  /// [plan] Plan for the resource.
  /// [productCode] This is the catalog UPN for the product.
  /// [provisioningState] Provisioning state of Free Services as assigned by RPaaS. This indicates the last operation's status. For all practical purposes, this can be ignored. For current status of Free Services resource, refer to FreeServicesStatus.
  /// [sku] The resource model definition representing SKU
  /// [startAt] Date and time when the free services become active
  /// [status] Current status of the free services
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [systemId] This is the globally unique identifier of the free services which will not change for its lifetime.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFreeServiceResult({
    required this.azureApiVersion,
    required this.billingAccountResourceId,
    required this.billingProfileResourceId,
    required this.customerResourceId,
    this.endAt,
    required this.etag,
    required this.id,
    this.identity,
    this.kind,
    required this.location,
    this.managedBy,
    required this.name,
    this.plan,
    this.productCode,
    required this.provisioningState,
    this.sku,
    this.startAt,
    this.status,
    required this.systemData,
    this.systemId,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'billingAccountResourceId': billingAccountResourceId,
      'billingProfileResourceId': billingProfileResourceId,
      'customerResourceId': customerResourceId,
      'endAt': ?endAt,
      'etag': etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': location,
      'managedBy': ?managedBy,
      'name': name,
      'plan': ?plan?.toMap(),
      'productCode': ?productCode,
      'provisioningState': provisioningState,
      'sku': ?sku?.toMap(),
      'startAt': ?startAt,
      'status': ?status,
      'systemData': systemData.toMap(),
      'systemId': ?systemId,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetFreeServiceResult.fromMap(Map<String, dynamic> map) {
    return GetFreeServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      billingAccountResourceId: map['billingAccountResourceId'] as String,
      billingProfileResourceId: map['billingProfileResourceId'] as String,
      customerResourceId: map['customerResourceId'] as String,
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

