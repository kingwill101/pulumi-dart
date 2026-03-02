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
    this.endAt,
    this.freeServiceName,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.plan,
    this.productCode,
    required this.resourceGroupName,
    this.sku,
    this.startAt,
    this.status,
    this.systemId,
    this.tags,
  });

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
      endAt: map['endAt'] == null ? null : (map['endAt']! as String).input(),
      freeServiceName: map['freeServiceName'] == null ? null : (map['freeServiceName']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy']! as String).input(),
      plan: map['plan'] == null ? null : (Plan.fromMap((map['plan']! as Map).cast<String, dynamic>())).input(),
      productCode: map['productCode'] == null ? null : (map['productCode']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      startAt: map['startAt'] == null ? null : (map['startAt']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      systemId: map['systemId'] == null ? null : (map['systemId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

