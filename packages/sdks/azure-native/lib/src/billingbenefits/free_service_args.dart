// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'plan.dart';
import 'sku.dart';

/// {@template pulumi_billingbenefits_free_service_args_doc}
/// The set of arguments for FreeService.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_free_service_args_doc}
class FreeServiceArgs {
  /// Expiration date and time of the free services
  final pulumi.Input<String>? endAt;
  /// Name of the free service
  final pulumi.Input<String>? freeServiceName;
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
  /// This is the catalog UPN for the product.
  final pulumi.Input<String>? productCode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Date and time when the free services become active
  final pulumi.Input<String>? startAt;
  /// Current status of the free services
  final pulumi.Input<String>? status;
  /// This is the globally unique identifier of the free services which will not change for its lifetime.
  final pulumi.Input<String>? systemId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FreeServiceArgs].
  /// [endAt] Expiration date and time of the free services
  /// [freeServiceName] Name of the free service
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [plan] Plan for the resource.
  /// [productCode] This is the catalog UPN for the product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The resource model definition representing SKU
  /// [startAt] Date and time when the free services become active
  /// [status] Current status of the free services
  /// [systemId] This is the globally unique identifier of the free services which will not change for its lifetime.
  /// [tags] Resource tags.
  FreeServiceArgs({
    pulumi.Output<String>? endAt,
    pulumi.Output<String>? freeServiceName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBy,
    pulumi.Output<Plan>? plan,
    pulumi.Output<String>? productCode,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<String>? startAt,
    pulumi.Output<String>? status,
    pulumi.Output<String>? systemId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      endAt = pulumi.Input.asOptionalInput<String>(endAt),
      freeServiceName = pulumi.Input.asOptionalInput<String>(freeServiceName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      startAt = pulumi.Input.asOptionalInput<String>(startAt),
      status = pulumi.Input.asOptionalInput<String>(status),
      systemId = pulumi.Input.asOptionalInput<String>(systemId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endAt': ?endAt,
      'freeServiceName': ?freeServiceName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'productCode': ?productCode,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'startAt': ?startAt,
      'status': ?status,
      'systemId': ?systemId,
      'tags': ?tags,
    };
  }

  factory FreeServiceArgs.fromMap(Map<String, dynamic> map) {
    return FreeServiceArgs(
      endAt: map['endAt'] == null ? null : pulumi.Output.create<String>(map['endAt'] as String),
      freeServiceName: map['freeServiceName'] == null ? null : pulumi.Output.create<String>(map['freeServiceName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      startAt: map['startAt'] == null ? null : pulumi.Output.create<String>(map['startAt'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      systemId: map['systemId'] == null ? null : pulumi.Output.create<String>(map['systemId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

