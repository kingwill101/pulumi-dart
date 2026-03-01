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
  final pulumi.Input<Commitment>? credit;
  /// Name of the credit
  final pulumi.Input<String> creditName;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The billing period of the impact for the resource. Format YYYYMM
  final pulumi.Input<String>? impactedBillingPeriod;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String>? managedBy;
  /// Plan for the resource.
  final pulumi.Input<Plan>? plan;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Name of the credit source
  final pulumi.Input<String>? sourceName;
  /// The uri of the resource impacted which lead to the grant of the credit.
  final pulumi.Input<String>? sourceResourceId;
  /// Status of the credit
  final pulumi.Input<String>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

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
  SourceArgs({
    pulumi.Output<Commitment>? credit,
    required pulumi.Output<String> creditName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? impactedBillingPeriod,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBy,
    pulumi.Output<Plan>? plan,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<String>? sourceName,
    pulumi.Output<String>? sourceResourceId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      credit = pulumi.Input.asOptionalInput<Commitment>(credit),
      creditName = pulumi.Input.asInput<String>(creditName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      impactedBillingPeriod = pulumi.Input.asOptionalInput<String>(impactedBillingPeriod),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      sourceName = pulumi.Input.asOptionalInput<String>(sourceName),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      credit: map['credit'] == null ? null : pulumi.Output.create<Commitment>(Commitment.fromMap((map['credit'] as Map).cast<String, dynamic>())),
      creditName: pulumi.Output.create<String>(map['creditName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      impactedBillingPeriod: map['impactedBillingPeriod'] == null ? null : pulumi.Output.create<String>(map['impactedBillingPeriod'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      sourceName: map['sourceName'] == null ? null : pulumi.Output.create<String>(map['sourceName'] as String),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

