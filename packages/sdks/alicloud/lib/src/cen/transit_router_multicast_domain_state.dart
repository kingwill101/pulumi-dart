// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_multicast_domain_options.dart';

/// Input properties used for looking up and filtering TransitRouterMulticastDomain resources.
class TransitRouterMulticastDomainState {
  /// The function options of the multicast domain. See `options` below.
  final pulumi.Input<TransitRouterMulticastDomainOptions>? options;

  /// (Available since v1.242.0) The region ID of the transit router.
  final pulumi.Input<String>? regionId;

  /// The status of the Transit Router Multicast Domain.
  final pulumi.Input<String>? status;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the forwarding router instance.
  final pulumi.Input<String>? transitRouterId;

  /// The description of the multicast domain.
  final pulumi.Input<String>? transitRouterMulticastDomainDescription;

  /// The name of the multicast domain.
  final pulumi.Input<String>? transitRouterMulticastDomainName;

  /// Creates a new [TransitRouterMulticastDomainState].
  /// [options] The function options of the multicast domain. See `options` below.
  /// [regionId] (Available since v1.242.0) The region ID of the transit router.
  /// [status] The status of the Transit Router Multicast Domain.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transitRouterId] The ID of the forwarding router instance.
  /// [transitRouterMulticastDomainDescription] The description of the multicast domain.
  /// [transitRouterMulticastDomainName] The name of the multicast domain.
  TransitRouterMulticastDomainState({
    this.options,
    this.regionId,
    this.status,
    this.tags,
    this.transitRouterId,
    this.transitRouterMulticastDomainDescription,
    this.transitRouterMulticastDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options':
          ?pulumi.Input.mapOptionalInputValue<
            TransitRouterMulticastDomainOptions,
            Map<String, dynamic>
          >(options, (value) => value.toMap()),
      'regionId': ?regionId,
      'status': ?status,
      'tags': ?tags,
      'transitRouterId': ?transitRouterId,
      'transitRouterMulticastDomainDescription':
          ?transitRouterMulticastDomainDescription,
      'transitRouterMulticastDomainName': ?transitRouterMulticastDomainName,
    };
  }

  factory TransitRouterMulticastDomainState.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainState(
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TransitRouterMulticastDomainOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitRouterId: (() {
        final guardedValue = map['transitRouterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterMulticastDomainDescription: (() {
        final guardedValue = map['transitRouterMulticastDomainDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterMulticastDomainName: (() {
        final guardedValue = map['transitRouterMulticastDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
