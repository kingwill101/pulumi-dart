// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment.dart';
import 'credit_breakdown_item.dart';
import 'credit_policies.dart';
import 'credit_reason.dart';
import 'managed_service_identity.dart';
import 'plan.dart';
import 'sku.dart';

/// {@template pulumi_billingbenefits_credit_args_doc}
/// The set of arguments for Credit.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_credit_args_doc}
class CreditArgs {
  /// Fully-qualified identifier of the billing account where the benefit is applied. Present only for Enterprise Agreement customers.
  final pulumi.Input<String?>? billingAccountResourceId;
  /// Credit line-items/milestones/no-charge services breakdown
  final pulumi.Input<List<CreditBreakdownItem>?>? breakdown;
  /// The entire investment amount for the credit contract, including currency and amount
  final pulumi.Input<Commitment?>? credit;
  /// Name of the credit
  final pulumi.Input<String?>? creditName;
  /// End DateTime in UTC.
  final pulumi.Input<String?>? endAt;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String?>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String?>? managedBy;
  /// Plan for the resource.
  final pulumi.Input<Plan?>? plan;
  /// Credit breakdown item representing a milestone, line-item, or no-charge service
  final pulumi.Input<CreditPolicies?>? policies;
  /// Product UPN for the credit type
  final pulumi.Input<String?>? productCode;
  /// The reason for the credit. Not required if not applicable.
  final pulumi.Input<CreditReason?>? reason;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  final pulumi.Input<String?>? resourceId;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku?>? sku;
  /// Start DateTime.
  final pulumi.Input<String?>? startAt;
  /// Status of the credit
  final pulumi.Input<dynamic>? status;
  /// System identifier
  final pulumi.Input<String?>? systemId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CreditArgs].
  /// [billingAccountResourceId] Fully-qualified identifier of the billing account where the benefit is applied. Present only for Enterprise Agreement customers.
  /// [breakdown] Credit line-items/milestones/no-charge services breakdown
  /// [credit] The entire investment amount for the credit contract, including currency and amount
  /// [creditName] Name of the credit
  /// [endAt] End DateTime in UTC.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [plan] Plan for the resource.
  /// [policies] Credit breakdown item representing a milestone, line-item, or no-charge service
  /// [productCode] Product UPN for the credit type
  /// [reason] The reason for the credit. Not required if not applicable.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  /// [sku] The resource model definition representing SKU
  /// [startAt] Start DateTime.
  /// [status] Status of the credit
  /// [systemId] System identifier
  /// [tags] Resource tags.
  const CreditArgs({
    this.billingAccountResourceId,
    this.breakdown,
    this.credit,
    this.creditName,
    this.endAt,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.plan,
    this.policies,
    this.productCode,
    this.reason,
    required this.resourceGroupName,
    this.resourceId,
    this.sku,
    this.startAt,
    this.status,
    this.systemId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountResourceId': ?billingAccountResourceId,
      'breakdown': ?pulumi.Input.mapOptionalInputValue<List<CreditBreakdownItem>, List<Map<String, dynamic>>>(breakdown, (value) => pulumi.Input.encodeList<CreditBreakdownItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'credit': ?pulumi.Input.mapOptionalInputValue<Commitment, Map<String, dynamic>>(credit, (value) => value.toMap()),
      'creditName': ?creditName,
      'endAt': ?endAt,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'policies': ?pulumi.Input.mapOptionalInputValue<CreditPolicies, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'productCode': ?productCode,
      'reason': ?pulumi.Input.mapOptionalInputValue<CreditReason, Map<String, dynamic>>(reason, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'startAt': ?startAt,
      'status': ?status,
      'systemId': ?systemId,
      'tags': ?tags,
    };
  }

  factory CreditArgs.fromMap(Map<String, dynamic> map) {
    return CreditArgs(
      billingAccountResourceId: (() { final guardedValue = map['billingAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      breakdown: (() { final guardedValue = map['breakdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CreditBreakdownItem>(guardedValue, (value) => CreditBreakdownItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      credit: (() { final guardedValue = map['credit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Commitment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creditName: (() { final guardedValue = map['creditName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Plan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreditPolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreditReason.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
