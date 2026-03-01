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
    pulumi.Output<bool>? allowContributors,
    pulumi.Output<String>? automaticShortfall,
    pulumi.Output<AutomaticShortfallSuppressReason>? automaticShortfallSuppressReason,
    pulumi.Output<String>? billingAccountResourceId,
    pulumi.Output<Commitment>? commitment,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? endAt,
    required pulumi.Output<String> entityType,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? maccName,
    pulumi.Output<String>? managedBy,
    pulumi.Output<List<MaccMilestone>>? milestones,
    pulumi.Output<Plan>? plan,
    pulumi.Output<String>? primaryBillingAccountResourceId,
    pulumi.Output<String>? primaryResourceId,
    pulumi.Output<String>? productCode,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceId,
    pulumi.Output<Shortfall>? shortfall,
    pulumi.Output<Sku>? sku,
    pulumi.Output<String>? startAt,
    pulumi.Output<String>? status,
    pulumi.Output<String>? systemId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      allowContributors = pulumi.Input.asOptionalInput<bool>(allowContributors),
      automaticShortfall = pulumi.Input.asOptionalInput<String>(automaticShortfall),
      automaticShortfallSuppressReason = pulumi.Input.asOptionalInput<AutomaticShortfallSuppressReason>(automaticShortfallSuppressReason),
      billingAccountResourceId = pulumi.Input.asOptionalInput<String>(billingAccountResourceId),
      commitment = pulumi.Input.asOptionalInput<Commitment>(commitment),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      endAt = pulumi.Input.asOptionalInput<String>(endAt),
      entityType = pulumi.Input.asInput<String>(entityType),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      maccName = pulumi.Input.asOptionalInput<String>(maccName),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      milestones = pulumi.Input.asOptionalInput<List<MaccMilestone>>(milestones),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      primaryBillingAccountResourceId = pulumi.Input.asOptionalInput<String>(primaryBillingAccountResourceId),
      primaryResourceId = pulumi.Input.asOptionalInput<String>(primaryResourceId),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      shortfall = pulumi.Input.asOptionalInput<Shortfall>(shortfall),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      startAt = pulumi.Input.asOptionalInput<String>(startAt),
      status = pulumi.Input.asOptionalInput<String>(status),
      systemId = pulumi.Input.asOptionalInput<String>(systemId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      allowContributors: map['allowContributors'] == null ? null : pulumi.Output.create<bool>(map['allowContributors'] as bool),
      automaticShortfall: map['automaticShortfall'] == null ? null : pulumi.Output.create<String>(map['automaticShortfall'] as String),
      automaticShortfallSuppressReason: map['automaticShortfallSuppressReason'] == null ? null : pulumi.Output.create<AutomaticShortfallSuppressReason>(AutomaticShortfallSuppressReason.fromMap((map['automaticShortfallSuppressReason'] as Map).cast<String, dynamic>())),
      billingAccountResourceId: map['billingAccountResourceId'] == null ? null : pulumi.Output.create<String>(map['billingAccountResourceId'] as String),
      commitment: map['commitment'] == null ? null : pulumi.Output.create<Commitment>(Commitment.fromMap((map['commitment'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      endAt: map['endAt'] == null ? null : pulumi.Output.create<String>(map['endAt'] as String),
      entityType: pulumi.Output.create<String>(map['entityType'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maccName: map['maccName'] == null ? null : pulumi.Output.create<String>(map['maccName'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      milestones: map['milestones'] == null ? null : pulumi.Output.create<List<MaccMilestone>>(pulumi.Input.decodeList<MaccMilestone>(map['milestones'], (value) => MaccMilestone.fromMap((value as Map).cast<String, dynamic>()))),
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      primaryBillingAccountResourceId: map['primaryBillingAccountResourceId'] == null ? null : pulumi.Output.create<String>(map['primaryBillingAccountResourceId'] as String),
      primaryResourceId: map['primaryResourceId'] == null ? null : pulumi.Output.create<String>(map['primaryResourceId'] as String),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      shortfall: map['shortfall'] == null ? null : pulumi.Output.create<Shortfall>(Shortfall.fromMap((map['shortfall'] as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      startAt: map['startAt'] == null ? null : pulumi.Output.create<String>(map['startAt'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      systemId: map['systemId'] == null ? null : pulumi.Output.create<String>(map['systemId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

