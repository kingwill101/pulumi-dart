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
  /// Name of the conditional credit
  final pulumi.Input<String?>? conditionalCreditName;
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
  /// Conditional credit properties
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ConditionalCreditArgs].
  /// [conditionalCreditName] Name of the conditional credit
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [plan] Plan for the resource.
  /// [properties] Conditional credit properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The resource model definition representing SKU
  /// [tags] Resource tags.
  const ConditionalCreditArgs({
    this.conditionalCreditName,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.plan,
    this.properties,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalCreditName': ?conditionalCreditName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ConditionalCreditArgs.fromMap(Map<String, dynamic> map) {
    return ConditionalCreditArgs(
      conditionalCreditName: (() { final guardedValue = map['conditionalCreditName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Plan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
