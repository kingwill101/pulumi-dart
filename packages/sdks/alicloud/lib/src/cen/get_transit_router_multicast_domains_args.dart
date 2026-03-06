// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_multicast_domains_get_transit_router_multicast_domains_args_doc}
/// Arguments for getTransitRouterMulticastDomains.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_multicast_domains_get_transit_router_multicast_domains_args_doc}
class GetTransitRouterMulticastDomainsArgs {
  /// A list of Transit Router Multicast Domain IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Transit Router Multicast Domain name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the multicast domain. Valid Value: `Active`.
  final pulumi.Input<String>? status;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;
  /// The ID of the multicast domain.
  final pulumi.Input<String>? transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainsArgs].
  /// [ids] A list of Transit Router Multicast Domain IDs.
  /// [nameRegex] A regex string to filter results by Transit Router Multicast Domain name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the multicast domain. Valid Value: `Active`.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain.
  const GetTransitRouterMulticastDomainsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    required this.transitRouterId,
    this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterId': transitRouterId,
      'transitRouterMulticastDomainId': ?transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      transitRouterMulticastDomainId: (() { final guardedValue = map['transitRouterMulticastDomainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

