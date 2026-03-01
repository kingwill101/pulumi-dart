// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterMulticastDomainsDomain {
  /// The ID of the Transit Router Multicast Domain.
  final String id;
  /// The status of the multicast domain. Valid Value: `Active`.
  final String status;
  /// The ID of the transit router.
  final String transitRouterId;
  /// The description of the Transit Router Multicast Domain.
  final String transitRouterMulticastDomainDescription;
  /// The ID of the multicast domain.
  final String transitRouterMulticastDomainId;
  /// The name of the Transit Router Multicast Domain.
  final String transitRouterMulticastDomainName;

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
      id: map['id'] as String,
      status: map['status'] as String,
      transitRouterId: map['transitRouterId'] as String,
      transitRouterMulticastDomainDescription: map['transitRouterMulticastDomainDescription'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
      transitRouterMulticastDomainName: map['transitRouterMulticastDomainName'] as String,
    );
  }
}

