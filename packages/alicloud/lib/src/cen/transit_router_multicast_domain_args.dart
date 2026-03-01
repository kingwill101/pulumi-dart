// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_multicast_domain_options.dart';

/// {@template pulumi_cen_transit_router_multicast_domain_transit_router_multicast_domain_args_doc}
/// The set of arguments for TransitRouterMulticastDomain.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_multicast_domain_transit_router_multicast_domain_args_doc}
class TransitRouterMulticastDomainArgs {
  /// The function options of the multicast domain. See `options` below.
  final pulumi.Input<TransitRouterMulticastDomainOptions>? options;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the forwarding router instance.
  final pulumi.Input<String> transitRouterId;
  /// The description of the multicast domain.
  final pulumi.Input<String>? transitRouterMulticastDomainDescription;
  /// The name of the multicast domain.
  final pulumi.Input<String>? transitRouterMulticastDomainName;

  /// Creates a new [TransitRouterMulticastDomainArgs].
  /// [options] The function options of the multicast domain. See `options` below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transitRouterId] The ID of the forwarding router instance.
  /// [transitRouterMulticastDomainDescription] The description of the multicast domain.
  /// [transitRouterMulticastDomainName] The name of the multicast domain.
  TransitRouterMulticastDomainArgs({
    TransitRouterMulticastDomainOptions? options,
    Map<String, String>? tags,
    required String transitRouterId,
    String? transitRouterMulticastDomainDescription,
    String? transitRouterMulticastDomainName,
  }) :
      options = pulumi.Input.asOptionalInput<TransitRouterMulticastDomainOptions>(options),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId),
      transitRouterMulticastDomainDescription = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainDescription),
      transitRouterMulticastDomainName = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?pulumi.Input.mapOptionalInputValue<TransitRouterMulticastDomainOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'tags': ?tags,
      'transitRouterId': transitRouterId,
      'transitRouterMulticastDomainDescription': ?transitRouterMulticastDomainDescription,
      'transitRouterMulticastDomainName': ?transitRouterMulticastDomainName,
    };
  }

  factory TransitRouterMulticastDomainArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainArgs(
      options: map['options'] == null ? null : TransitRouterMulticastDomainOptions.fromMap((map['options'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitRouterId: map['transitRouterId'] as String,
      transitRouterMulticastDomainDescription: map['transitRouterMulticastDomainDescription'] == null ? null : map['transitRouterMulticastDomainDescription'] as String,
      transitRouterMulticastDomainName: map['transitRouterMulticastDomainName'] == null ? null : map['transitRouterMulticastDomainName'] as String,
    );
  }
}

