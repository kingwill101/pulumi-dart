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
  GetTransitRouterMulticastDomainsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    required pulumi.Output<String> transitRouterId,
    pulumi.Output<String>? transitRouterMulticastDomainId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId),
      transitRouterMulticastDomainId = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : pulumi.Output.create<String>(map['transitRouterMulticastDomainId'] as String),
    );
  }
}

