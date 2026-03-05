// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterMulticastDomainsDomain {
  /// The ID of the Transit Router Multicast Domain.
  final pulumi.Input<String> id;
  /// The status of the multicast domain. Valid Value: `Active`.
  final pulumi.Input<String> status;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;
  /// The description of the Transit Router Multicast Domain.
  final pulumi.Input<String> transitRouterMulticastDomainDescription;
  /// The ID of the multicast domain.
  final pulumi.Input<String> transitRouterMulticastDomainId;
  /// The name of the Transit Router Multicast Domain.
  final pulumi.Input<String> transitRouterMulticastDomainName;

  /// Creates a new [GetTransitRouterMulticastDomainsDomain].
  /// [id] The ID of the Transit Router Multicast Domain.
  /// [status] The status of the multicast domain. Valid Value: `Active`.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterMulticastDomainDescription] The description of the Transit Router Multicast Domain.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain.
  /// [transitRouterMulticastDomainName] The name of the Transit Router Multicast Domain.
  GetTransitRouterMulticastDomainsDomain({
    required this.id,
    required this.status,
    required this.transitRouterId,
    required this.transitRouterMulticastDomainDescription,
    required this.transitRouterMulticastDomainId,
    required this.transitRouterMulticastDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status': status,
      'transitRouterId': transitRouterId,
      'transitRouterMulticastDomainDescription': transitRouterMulticastDomainDescription,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'transitRouterMulticastDomainName': transitRouterMulticastDomainName,
    };
  }

  factory GetTransitRouterMulticastDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainsDomain(
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      transitRouterMulticastDomainDescription: pulumi.Input.fromValue(map['transitRouterMulticastDomainDescription'] as String),
      transitRouterMulticastDomainId: pulumi.Input.fromValue(map['transitRouterMulticastDomainId'] as String),
      transitRouterMulticastDomainName: pulumi.Input.fromValue(map['transitRouterMulticastDomainName'] as String),
    );
  }
}

