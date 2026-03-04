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
    this.ids,
    this.outputFile,
    this.resourceId,
    this.resourceType,
    this.status,
    this.transitRouterAttachmentId,
    required this.transitRouterMulticastDomainId,
    this.vswitchId,
  });

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

  factory GetTransitRouterMulticastDomainAssociationsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransitRouterMulticastDomainAssociationsArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterAttachmentId: (() {
        final guardedValue = map['transitRouterAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterMulticastDomainId: pulumi.Input.fromValue(
        map['transitRouterMulticastDomainId'] as String,
      ),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
