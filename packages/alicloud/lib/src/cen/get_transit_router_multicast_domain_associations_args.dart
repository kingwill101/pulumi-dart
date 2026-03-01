// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_multicast_domain_associations_get_transit_router_multicast_domain_associations_args_doc}
/// Arguments for getTransitRouterMulticastDomainAssociations.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_multicast_domain_associations_get_transit_router_multicast_domain_associations_args_doc}
class GetTransitRouterMulticastDomainAssociationsArgs {
  /// A list of Transit Router Multicast Domain Association IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource associated with the multicast domain.
  final pulumi.Input<String>? resourceId;
  /// The type of resource associated with the multicast domain. Valid Value: `VPC`.
  final pulumi.Input<String>? resourceType;
  /// The status of the associated resource. Valid Value: `Associated`, `Associating`, `Dissociating`.
  final pulumi.Input<String>? status;
  /// The ID of the network instance connection.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of the multicast domain.
  final pulumi.Input<String> transitRouterMulticastDomainId;
  /// The ID of the vSwitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetTransitRouterMulticastDomainAssociationsArgs].
  /// [ids] A list of Transit Router Multicast Domain Association IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceId] The ID of the resource associated with the multicast domain.
  /// [resourceType] The type of resource associated with the multicast domain. Valid Value: `VPC`.
  /// [status] The status of the associated resource. Valid Value: `Associated`, `Associating`, `Dissociating`.
  /// [transitRouterAttachmentId] The ID of the network instance connection.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain.
  /// [vswitchId] The ID of the vSwitch.
  GetTransitRouterMulticastDomainAssociationsArgs({
    List<String>? ids,
    String? outputFile,
    String? resourceId,
    String? resourceType,
    String? status,
    String? transitRouterAttachmentId,
    required String transitRouterMulticastDomainId,
    String? vswitchId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterMulticastDomainId = pulumi.Input.asInput<String>(transitRouterMulticastDomainId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetTransitRouterMulticastDomainAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainAssociationsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : map['transitRouterAttachmentId'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

