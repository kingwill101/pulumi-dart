// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment.dart';
import 'managed_service_identity.dart';
import 'plan.dart';
import 'sku.dart';

/// {@template pulumi_billingbenefits_source_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_source_args_doc}
class SourceArgs {
  /// Commitment towards the benefit.
  final pulumi.Input<Commitment?>? credit;
  /// Name of the credit
  final pulumi.Input<String> creditName;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The billing period of the impact for the resource. Format YYYYMM
  final pulumi.Input<String?>? impactedBillingPeriod;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String?>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String?>? managedBy;
  /// Plan for the resource.
  final pulumi.Input<Plan?>? plan;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku?>? sku;
  /// Name of the credit source
  final pulumi.Input<String?>? sourceName;
  /// The uri of the resource impacted which lead to the grant of the credit.
  final pulumi.Input<String?>? sourceResourceId;
  /// Status of the credit
  final pulumi.Input<dynamic>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SourceArgs].
  /// [credit] Commitment towards the benefit.
  /// [creditName] Name of the credit
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [impactedBillingPeriod] The billing period of the impact for the resource. Format YYYYMM
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [plan] Plan for the resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The resource model definition representing SKU
  /// [sourceName] Name of the credit source
  /// [sourceResourceId] The uri of the resource impacted which lead to the grant of the credit.
  /// [status] Status of the credit
  /// [tags] Resource tags.
  const SourceArgs({
    this.credit,
    required this.creditName,
    this.identity,
    this.impactedBillingPeriod,
    this.kind,
    this.location,
    this.managedBy,
    this.plan,
    required this.resourceGroupName,
    this.sku,
    this.sourceName,
    this.sourceResourceId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credit': ?pulumi.Input.mapOptionalInputValue<Commitment, Map<String, dynamic>>(credit, (value) => value.toMap()),
      'creditName': creditName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'impactedBillingPeriod': ?impactedBillingPeriod,
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sourceName': ?sourceName,
      'sourceResourceId': ?sourceResourceId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory SourceArgs.fromMap(Map<String, dynamic> map) {
    return SourceArgs(
      credit: (() { final guardedValue = map['credit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Commitment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creditName: pulumi.Input.fromValue(map['creditName'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      impactedBillingPeriod: (() { final guardedValue = map['impactedBillingPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Plan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
