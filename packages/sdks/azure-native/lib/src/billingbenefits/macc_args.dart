// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_shortfall_suppress_reason.dart';
import 'commitment.dart';
import 'macc_milestone.dart';
import 'managed_service_identity.dart';
import 'plan.dart';
import 'shortfall.dart';
import 'sku.dart';

/// {@template pulumi_billingbenefits_macc_args_doc}
/// The set of arguments for Macc.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_macc_args_doc}
class MaccArgs {
  /// Setting this to true means multi-entity.
  final pulumi.Input<bool>? allowContributors;
  /// Setting this to 'Enable' enables automatic shortfall charging when commitment is not met.
  final pulumi.Input<String>? automaticShortfall;
  /// Optional field to record suppression reason for automatic shortfall.
  final pulumi.Input<AutomaticShortfallSuppressReason>? automaticShortfallSuppressReason;
  /// Fully-qualified identifier of the billing account where the MACC is applied. Present only for Enterprise Agreement customers. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}
  final pulumi.Input<String>? billingAccountResourceId;
  /// Commitment towards the benefit.
  final pulumi.Input<Commitment>? commitment;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Must be end of month. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  final pulumi.Input<String>? endAt;
  /// Represents type of the object being operated on. Possible values are primary or contributor.
  final pulumi.Input<String> entityType;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of primary MACC.
  final pulumi.Input<String>? maccName;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String>? managedBy;
  /// List of milestones associated with this MACC.
  final pulumi.Input<List<MaccMilestone>>? milestones;
  /// Plan for the resource.
  final pulumi.Input<Plan>? plan;
  /// Fully-qualified billing account resource identifier of the primary MACC. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}.
  final pulumi.Input<String>? primaryBillingAccountResourceId;
  /// Fully-qualified resource identifier of the primary MACC. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  final pulumi.Input<String>? primaryResourceId;
  /// Represents catalog UPN.
  final pulumi.Input<String>? productCode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// This is the resource identifier of either the primary MACC or the contributor. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  final pulumi.Input<String>? resourceId;
  /// MACC shortfall
  final pulumi.Input<Shortfall>? shortfall;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Must be start of month. Timestamp must be in the ISO date format YYYY-MM-DDT00:00:00Z.
  final pulumi.Input<String>? startAt;
  /// Represents the current status of the MACC.
  final pulumi.Input<String>? status;
  /// This is the globally unique identifier of the MACC which will not change for the lifetime of the MACC.
  final pulumi.Input<String>? systemId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MaccArgs].
  /// [allowContributors] Setting this to true means multi-entity.
  /// [automaticShortfall] Setting this to 'Enable' enables automatic shortfall charging when commitment is not met.
  /// [automaticShortfallSuppressReason] Optional field to record suppression reason for automatic shortfall.
  /// [billingAccountResourceId] Fully-qualified identifier of the billing account where the MACC is applied. Present only for Enterprise Agreement customers. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}
  /// [commitment] Commitment towards the benefit.
  /// [displayName] Display name
  /// [endAt] Must be end of month. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  /// [entityType] Represents type of the object being operated on. Possible values are primary or contributor.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [maccName] Name of primary MACC.
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [milestones] List of milestones associated with this MACC.
  /// [plan] Plan for the resource.
  /// [primaryBillingAccountResourceId] Fully-qualified billing account resource identifier of the primary MACC. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}.
  /// [primaryResourceId] Fully-qualified resource identifier of the primary MACC. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  /// [productCode] Represents catalog UPN.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] This is the resource identifier of either the primary MACC or the contributor. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  /// [shortfall] MACC shortfall
  /// [sku] The resource model definition representing SKU
  /// [startAt] Must be start of month. Timestamp must be in the ISO date format YYYY-MM-DDT00:00:00Z.
  /// [status] Represents the current status of the MACC.
  /// [systemId] This is the globally unique identifier of the MACC which will not change for the lifetime of the MACC.
  /// [tags] Resource tags.
  MaccArgs({
    this.allowContributors,
    this.automaticShortfall,
    this.automaticShortfallSuppressReason,
    this.billingAccountResourceId,
    this.commitment,
    this.displayName,
    this.endAt,
    required this.entityType,
    this.identity,
    this.kind,
    this.location,
    this.maccName,
    this.managedBy,
    this.milestones,
    this.plan,
    this.primaryBillingAccountResourceId,
    this.primaryResourceId,
    this.productCode,
    required this.resourceGroupName,
    this.resourceId,
    this.shortfall,
    this.sku,
    this.startAt,
    this.status,
    this.systemId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowContributors': ?allowContributors,
      'automaticShortfall': ?automaticShortfall,
      'automaticShortfallSuppressReason': ?pulumi.Input.mapOptionalInputValue<AutomaticShortfallSuppressReason, Map<String, dynamic>>(automaticShortfallSuppressReason, (value) => value.toMap()),
      'billingAccountResourceId': ?billingAccountResourceId,
      'commitment': ?pulumi.Input.mapOptionalInputValue<Commitment, Map<String, dynamic>>(commitment, (value) => value.toMap()),
      'displayName': ?displayName,
      'endAt': ?endAt,
      'entityType': entityType,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'maccName': ?maccName,
      'managedBy': ?managedBy,
      'milestones': ?pulumi.Input.mapOptionalInputValue<List<MaccMilestone>, List<Map<String, dynamic>>>(milestones, (value) => pulumi.Input.encodeList<MaccMilestone, Map<String, dynamic>>(value, (value) => value.toMap())),
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'primaryBillingAccountResourceId': ?primaryBillingAccountResourceId,
      'primaryResourceId': ?primaryResourceId,
      'productCode': ?productCode,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'shortfall': ?pulumi.Input.mapOptionalInputValue<Shortfall, Map<String, dynamic>>(shortfall, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'startAt': ?startAt,
      'status': ?status,
      'systemId': ?systemId,
      'tags': ?tags,
    };
  }

  factory MaccArgs.fromMap(Map<String, dynamic> map) {
    return MaccArgs(
      allowContributors: map['allowContributors'] == null ? null : (map['allowContributors'] as bool).input(),
      automaticShortfall: map['automaticShortfall'] == null ? null : (map['automaticShortfall'] as String).input(),
      automaticShortfallSuppressReason: map['automaticShortfallSuppressReason'] == null ? null : (AutomaticShortfallSuppressReason.fromMap((map['automaticShortfallSuppressReason'] as Map).cast<String, dynamic>())).input(),
      billingAccountResourceId: map['billingAccountResourceId'] == null ? null : (map['billingAccountResourceId'] as String).input(),
      commitment: map['commitment'] == null ? null : (Commitment.fromMap((map['commitment'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      endAt: map['endAt'] == null ? null : (map['endAt'] as String).input(),
      entityType: (map['entityType'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maccName: map['maccName'] == null ? null : (map['maccName'] as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy'] as String).input(),
      milestones: map['milestones'] == null ? null : (pulumi.Input.decodeList<MaccMilestone>(map['milestones'], (value) => MaccMilestone.fromMap((value as Map).cast<String, dynamic>()))).input(),
      plan: map['plan'] == null ? null : (Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())).input(),
      primaryBillingAccountResourceId: map['primaryBillingAccountResourceId'] == null ? null : (map['primaryBillingAccountResourceId'] as String).input(),
      primaryResourceId: map['primaryResourceId'] == null ? null : (map['primaryResourceId'] as String).input(),
      productCode: map['productCode'] == null ? null : (map['productCode'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      shortfall: map['shortfall'] == null ? null : (Shortfall.fromMap((map['shortfall'] as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      startAt: map['startAt'] == null ? null : (map['startAt'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      systemId: map['systemId'] == null ? null : (map['systemId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

