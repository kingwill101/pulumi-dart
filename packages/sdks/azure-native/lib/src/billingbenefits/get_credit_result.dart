// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_response.dart';
import 'credit_breakdown_item_response.dart';
import 'credit_policies_response.dart';
import 'credit_reason_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCredit.
class GetCreditResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully-qualified identifier of the billing account where the benefit is applied. Present only for Enterprise Agreement customers.
  final String? billingAccountResourceId;
  /// Fully-qualified identifier of the billing profile where the benefit is applied. Present only for Field-led or Customer-led customers.
  final String billingProfileResourceId;
  /// Credit line-items/milestones/no-charge services breakdown
  final List<CreditBreakdownItemResponse>? breakdown;
  /// The entire investment amount for the credit contract, including currency and amount
  final CommitmentResponse? credit;
  /// Fully-qualified identifier of the customer where the savings plan is applied. Present only for Partner-led customers. Format is /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}
  final String customerId;
  /// End DateTime in UTC.
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
  /// Credit breakdown item representing a milestone, line-item, or no-charge service
  final CreditPoliciesResponse? policies;
  /// Product UPN for the credit type
  final String? productCode;
  /// Provisioning state
  final String provisioningState;
  /// The reason for the credit. Not required if not applicable.
  final CreditReasonResponse? reason;
  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  final String? resourceId;
  /// The resource model definition representing SKU
  final SkuResponse? sku;
  /// Start DateTime.
  final String? startAt;
  /// Status of the credit
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// System identifier
  final String? systemId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCreditResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingAccountResourceId] Fully-qualified identifier of the billing account where the benefit is applied. Present only for Enterprise Agreement customers.
  /// [billingProfileResourceId] Fully-qualified identifier of the billing profile where the benefit is applied. Present only for Field-led or Customer-led customers.
  /// [breakdown] Credit line-items/milestones/no-charge services breakdown
  /// [credit] The entire investment amount for the credit contract, including currency and amount
  /// [customerId] Fully-qualified identifier of the customer where the savings plan is applied. Present only for Partner-led customers. Format is /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}
  /// [endAt] End DateTime in UTC.
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [name] The name of the resource
  /// [plan] Plan for the resource.
  /// [policies] Credit breakdown item representing a milestone, line-item, or no-charge service
  /// [productCode] Product UPN for the credit type
  /// [provisioningState] Provisioning state
  /// [reason] The reason for the credit. Not required if not applicable.
  /// [resourceId] Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  /// [sku] The resource model definition representing SKU
  /// [startAt] Start DateTime.
  /// [status] Status of the credit
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [systemId] System identifier
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCreditResult({
    required this.azureApiVersion,
    this.billingAccountResourceId,
    required this.billingProfileResourceId,
    this.breakdown,
    this.credit,
    required this.customerId,
    this.endAt,
    required this.etag,
    required this.id,
    this.identity,
    this.kind,
    required this.location,
    this.managedBy,
    required this.name,
    this.plan,
    this.policies,
    this.productCode,
    required this.provisioningState,
    this.reason,
    this.resourceId,
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
      'billingAccountResourceId': ?billingAccountResourceId,
      'billingProfileResourceId': billingProfileResourceId,
      'breakdown': ?(() { final guardedValue = breakdown; if (guardedValue == null) return null; return pulumi.Input.encodeList<CreditBreakdownItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'credit': ?credit?.toMap(),
      'customerId': customerId,
      'endAt': ?endAt,
      'etag': etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': location,
      'managedBy': ?managedBy,
      'name': name,
      'plan': ?plan?.toMap(),
      'policies': ?policies?.toMap(),
      'productCode': ?productCode,
      'provisioningState': provisioningState,
      'reason': ?reason?.toMap(),
      'resourceId': ?resourceId,
      'sku': ?sku?.toMap(),
      'startAt': ?startAt,
      'status': ?status,
      'systemData': systemData.toMap(),
      'systemId': ?systemId,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCreditResult.fromMap(Map<String, dynamic> map) {
    return GetCreditResult(
      azureApiVersion: map['azureApiVersion'] as String,
      billingAccountResourceId: (() { final guardedValue = map['billingAccountResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingProfileResourceId: map['billingProfileResourceId'] as String,
      breakdown: (() { final guardedValue = map['breakdown']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CreditBreakdownItemResponse>(guardedValue, (value) => CreditBreakdownItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      credit: (() { final guardedValue = map['credit']; if (guardedValue == null) return null; return CommitmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      customerId: map['customerId'] as String,
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return CreditPoliciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return CreditReasonResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
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

