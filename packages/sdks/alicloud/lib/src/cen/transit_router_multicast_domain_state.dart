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
    pulumi.Output<TransitRouterMulticastDomainOptions>? options,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<String>? transitRouterMulticastDomainDescription,
    pulumi.Output<String>? transitRouterMulticastDomainName,
  }) :
      options = pulumi.Input.asOptionalInput<TransitRouterMulticastDomainOptions>(options),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterMulticastDomainDescription = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainDescription),
      transitRouterMulticastDomainName = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?pulumi.Input.mapOptionalInputValue<TransitRouterMulticastDomainOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'regionId': ?regionId,
      'status': ?status,
      'tags': ?tags,
      'transitRouterId': ?transitRouterId,
      'transitRouterMulticastDomainDescription': ?transitRouterMulticastDomainDescription,
      'transitRouterMulticastDomainName': ?transitRouterMulticastDomainName,
    };
  }

  factory TransitRouterMulticastDomainState.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainState(
      options: map['options'] == null ? null : pulumi.Output.create<TransitRouterMulticastDomainOptions>(TransitRouterMulticastDomainOptions.fromMap((map['options'] as Map).cast<String, dynamic>())),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterMulticastDomainDescription: map['transitRouterMulticastDomainDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterMulticastDomainDescription'] as String),
      transitRouterMulticastDomainName: map['transitRouterMulticastDomainName'] == null ? null : pulumi.Output.create<String>(map['transitRouterMulticastDomainName'] as String),
    );
  }
}

