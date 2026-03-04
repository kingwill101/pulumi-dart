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
  final pulumi.Input<AutomaticShortfallSuppressReason>?
  automaticShortfallSuppressReason;

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
      'automaticShortfallSuppressReason':
          ?pulumi.Input.mapOptionalInputValue<
            AutomaticShortfallSuppressReason,
            Map<String, dynamic>
          >(automaticShortfallSuppressReason, (value) => value.toMap()),
      'billingAccountResourceId': ?billingAccountResourceId,
      'commitment':
          ?pulumi.Input.mapOptionalInputValue<Commitment, Map<String, dynamic>>(
            commitment,
            (value) => value.toMap(),
          ),
      'displayName': ?displayName,
      'endAt': ?endAt,
      'entityType': entityType,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'maccName': ?maccName,
      'managedBy': ?managedBy,
      'milestones':
          ?pulumi.Input.mapOptionalInputValue<
            List<MaccMilestone>,
            List<Map<String, dynamic>>
          >(
            milestones,
            (value) =>
                pulumi.Input.encodeList<MaccMilestone, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(
        plan,
        (value) => value.toMap(),
      ),
      'primaryBillingAccountResourceId': ?primaryBillingAccountResourceId,
      'primaryResourceId': ?primaryResourceId,
      'productCode': ?productCode,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'shortfall':
          ?pulumi.Input.mapOptionalInputValue<Shortfall, Map<String, dynamic>>(
            shortfall,
            (value) => value.toMap(),
          ),
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'startAt': ?startAt,
      'status': ?status,
      'systemId': ?systemId,
      'tags': ?tags,
    };
  }

  factory MaccArgs.fromMap(Map<String, dynamic> map) {
    return MaccArgs(
      allowContributors: (() {
        final guardedValue = map['allowContributors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      automaticShortfall: (() {
        final guardedValue = map['automaticShortfall'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      automaticShortfallSuppressReason: (() {
        final guardedValue = map['automaticShortfallSuppressReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutomaticShortfallSuppressReason.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      billingAccountResourceId: (() {
        final guardedValue = map['billingAccountResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      commitment: (() {
        final guardedValue = map['commitment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Commitment.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endAt: (() {
        final guardedValue = map['endAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maccName: (() {
        final guardedValue = map['maccName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedBy: (() {
        final guardedValue = map['managedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      milestones: (() {
        final guardedValue = map['milestones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MaccMilestone>(
            guardedValue,
            (value) =>
                MaccMilestone.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Plan.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      primaryBillingAccountResourceId: (() {
        final guardedValue = map['primaryBillingAccountResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryResourceId: (() {
        final guardedValue = map['primaryResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productCode: (() {
        final guardedValue = map['productCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shortfall: (() {
        final guardedValue = map['shortfall'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Shortfall.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      startAt: (() {
        final guardedValue = map['startAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemId: (() {
        final guardedValue = map['systemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
