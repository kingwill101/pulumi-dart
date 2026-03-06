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
  const TransitRouterMulticastDomainArgs({
    this.options,
    this.tags,
    required this.transitRouterId,
    this.transitRouterMulticastDomainDescription,
    this.transitRouterMulticastDomainName,
  });

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
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransitRouterMulticastDomainOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      transitRouterMulticastDomainDescription: (() { final guardedValue = map['transitRouterMulticastDomainDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterMulticastDomainName: (() { final guardedValue = map['transitRouterMulticastDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

