// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment.dart';
import 'credit_breakdown_item.dart';
import 'credit_policies.dart';
import 'managed_service_identity.dart';
import 'plan.dart';
import 'sku.dart';

/// {@template pulumi_billingbenefits_credit_args_doc}
/// The set of arguments for Credit.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_credit_args_doc}
class CreditArgs {
  /// Fully-qualified identifier of the billing account where the benefit is applied. Present only for Enterprise Agreement customers.
  final pulumi.Input<String>? billingAccountResourceId;
  /// Credit line-items/milestones/no-charge services breakdown
  final pulumi.Input<List<CreditBreakdownItem>>? breakdown;
  /// The entire investment amount for the credit contract, including currency and amount
  final pulumi.Input<Commitment>? credit;
  /// Name of the credit
  final pulumi.Input<String>? creditName;
  /// End DateTime in UTC.
  final pulumi.Input<String>? endAt;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String>? managedBy;
  /// Plan for the resource.
  final pulumi.Input<Plan>? plan;
  /// Credit breakdown item representing a milestone, line-item, or no-charge service
  final pulumi.Input<CreditPolicies>? policies;
  /// Product UPN for the credit type
  final pulumi.Input<String>? productCode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  final pulumi.Input<String>? resourceId;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Start DateTime.
  final pulumi.Input<String>? startAt;
  /// Status of the credit
  final pulumi.Input<String>? status;
  /// System identifier
  final pulumi.Input<String>? systemId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

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
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  /// [sku] The resource model definition representing SKU
  /// [startAt] Start DateTime.
  /// [status] Status of the credit
  /// [systemId] System identifier
  /// [tags] Resource tags.
  CreditArgs({
    String? billingAccountResourceId,
    List<CreditBreakdownItem>? breakdown,
    Commitment? credit,
    String? creditName,
    String? endAt,
    ManagedServiceIdentity? identity,
    String? kind,
    String? location,
    String? managedBy,
    Plan? plan,
    CreditPolicies? policies,
    String? productCode,
    required String resourceGroupName,
    String? resourceId,
    Sku? sku,
    String? startAt,
    String? status,
    String? systemId,
    Map<String, String>? tags,
  }) :
      billingAccountResourceId = pulumi.Input.asOptionalInput<String>(billingAccountResourceId),
      breakdown = pulumi.Input.asOptionalInput<List<CreditBreakdownItem>>(breakdown),
      credit = pulumi.Input.asOptionalInput<Commitment>(credit),
      creditName = pulumi.Input.asOptionalInput<String>(creditName),
      endAt = pulumi.Input.asOptionalInput<String>(endAt),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      policies = pulumi.Input.asOptionalInput<CreditPolicies>(policies),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      startAt = pulumi.Input.asOptionalInput<String>(startAt),
      status = pulumi.Input.asOptionalInput<String>(status),
      systemId = pulumi.Input.asOptionalInput<String>(systemId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      billingAccountResourceId: map['billingAccountResourceId'] == null ? null : map['billingAccountResourceId'] as String,
      breakdown: map['breakdown'] == null ? null : pulumi.Input.decodeList<CreditBreakdownItem>(map['breakdown'], (value) => CreditBreakdownItem.fromMap((value as Map).cast<String, dynamic>())),
      credit: map['credit'] == null ? null : Commitment.fromMap((map['credit'] as Map).cast<String, dynamic>()),
      creditName: map['creditName'] == null ? null : map['creditName'] as String,
      endAt: map['endAt'] == null ? null : map['endAt'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      plan: map['plan'] == null ? null : Plan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      policies: map['policies'] == null ? null : CreditPolicies.fromMap((map['policies'] as Map).cast<String, dynamic>()),
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      startAt: map['startAt'] == null ? null : map['startAt'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      systemId: map['systemId'] == null ? null : map['systemId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

