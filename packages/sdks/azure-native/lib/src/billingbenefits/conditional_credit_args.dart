// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'plan.dart';
import 'sku.dart';

/// {@template pulumi_billingbenefits_conditional_credit_args_doc}
/// The set of arguments for ConditionalCredit.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_conditional_credit_args_doc}
class ConditionalCreditArgs {
  /// The billing account resource ID
  final pulumi.Input<String>? billingAccountResourceId;
  /// Name of the conditional credit
  final pulumi.Input<String>? conditionalCreditName;
  /// Display name for the conditional credit
  final pulumi.Input<String>? displayName;
  /// End date of the conditional credit (derived from last milestone)
  final pulumi.Input<String>? endAt;
  /// Type of conditional credit entity
  final pulumi.Input<String> entityType;
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
  /// Product code for the conditional credit
  final pulumi.Input<String>? productCode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  final pulumi.Input<String>? resourceId;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Start date of the conditional credit
  final pulumi.Input<String>? startAt;
  /// The status of the conditional credit
  final pulumi.Input<String>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConditionalCreditArgs].
  /// [billingAccountResourceId] The billing account resource ID
  /// [conditionalCreditName] Name of the conditional credit
  /// [displayName] Display name for the conditional credit
  /// [endAt] End date of the conditional credit (derived from last milestone)
  /// [entityType] Type of conditional credit entity
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [plan] Plan for the resource.
  /// [productCode] Product code for the conditional credit
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  /// [sku] The resource model definition representing SKU
  /// [startAt] Start date of the conditional credit
  /// [status] The status of the conditional credit
  /// [tags] Resource tags.
  ConditionalCreditArgs({
    this.billingAccountResourceId,
    this.conditionalCreditName,
    this.displayName,
    this.endAt,
    required this.entityType,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.plan,
    this.productCode,
    required this.resourceGroupName,
    this.resourceId,
    this.sku,
    this.startAt,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountResourceId': ?billingAccountResourceId,
      'conditionalCreditName': ?conditionalCreditName,
      'displayName': ?displayName,
      'endAt': ?endAt,
      'entityType': entityType,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'productCode': ?productCode,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'startAt': ?startAt,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ConditionalCreditArgs.fromMap(Map<String, dynamic> map) {
    return ConditionalCreditArgs(
      billingAccountResourceId: map['billingAccountResourceId'] == null ? null : (map['billingAccountResourceId']! as String).input(),
      conditionalCreditName: map['conditionalCreditName'] == null ? null : (map['conditionalCreditName']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      endAt: map['endAt'] == null ? null : (map['endAt']! as String).input(),
      entityType: (map['entityType'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy']! as String).input(),
      plan: map['plan'] == null ? null : (Plan.fromMap((map['plan']! as Map).cast<String, dynamic>())).input(),
      productCode: map['productCode'] == null ? null : (map['productCode']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      startAt: map['startAt'] == null ? null : (map['startAt']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

