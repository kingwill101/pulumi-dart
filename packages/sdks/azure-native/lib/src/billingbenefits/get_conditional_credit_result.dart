// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConditionalCredit.
class GetConditionalCreditResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully-qualified identifier of the benefit under applicable benefit list.
  final String benefitResourceId;

  /// The billing account resource ID
  final String? billingAccountResourceId;

  /// Display name for the conditional credit
  final String? displayName;

  /// End date of the conditional credit (derived from last milestone)
  final String? endAt;

  /// Type of conditional credit entity
  final String entityType;

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

  /// Product code for the conditional credit
  final String? productCode;

  /// The provisioning state of the resource
  final String provisioningState;

  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  final String? resourceId;

  /// The resource model definition representing SKU
  final SkuResponse? sku;

  /// Start date of the conditional credit
  final String? startAt;

  /// The status of the conditional credit
  final String? status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConditionalCreditResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [benefitResourceId] Fully-qualified identifier of the benefit under applicable benefit list.
  /// [billingAccountResourceId] The billing account resource ID
  /// [displayName] Display name for the conditional credit
  /// [endAt] End date of the conditional credit (derived from last milestone)
  /// [entityType] Type of conditional credit entity
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [name] The name of the resource
  /// [plan] Plan for the resource.
  /// [productCode] Product code for the conditional credit
  /// [provisioningState] The provisioning state of the resource
  /// [resourceId] Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  /// [sku] The resource model definition representing SKU
  /// [startAt] Start date of the conditional credit
  /// [status] The status of the conditional credit
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetConditionalCreditResult({
    required this.azureApiVersion,
    required this.benefitResourceId,
    this.billingAccountResourceId,
    this.displayName,
    this.endAt,
    required this.entityType,
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
    this.resourceId,
    this.sku,
    this.startAt,
    this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'benefitResourceId': benefitResourceId,
      'billingAccountResourceId': ?billingAccountResourceId,
      'displayName': ?displayName,
      'endAt': ?endAt,
      'entityType': entityType,
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
      'resourceId': ?resourceId,
      'sku': ?sku?.toMap(),
      'startAt': ?startAt,
      'status': ?status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetConditionalCreditResult.fromMap(Map<String, dynamic> map) {
    return GetConditionalCreditResult(
      azureApiVersion: map['azureApiVersion'] as String,
      benefitResourceId: map['benefitResourceId'] as String,
      billingAccountResourceId: (() {
        final guardedValue = map['billingAccountResourceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      endAt: (() {
        final guardedValue = map['endAt'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      entityType: map['entityType'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
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
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return PlanResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      productCode: (() {
        final guardedValue = map['productCode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      startAt: (() {
        final guardedValue = map['startAt'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
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
    );
  }
}
