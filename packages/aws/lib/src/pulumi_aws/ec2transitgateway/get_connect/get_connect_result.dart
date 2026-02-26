// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_connect_filter/get_connect_filter.dart';

/// Result data returned by getConnect.
class GetConnectResult {
  final List<GetConnectFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Tunnel protocol
  final String protocol;
  final String region;

  /// Key-value tags for the EC2 Transit Gateway Connect
  final Map<String, String> tags;
  final String transitGatewayConnectId;

  /// EC2 Transit Gateway identifier
  final String transitGatewayId;

  /// The underlaying VPC attachment
  final String transportAttachmentId;

  GetConnectResult({
    this.filters,
    required this.id,
    required this.protocol,
    required this.region,
    required this.tags,
    required this.transitGatewayConnectId,
    required this.transitGatewayId,
    required this.transportAttachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<GetConnectFilter, Map<String, dynamic>>(
          filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['protocol'] = protocol;
    map['region'] = region;
    map['tags'] = tags;
    map['transitGatewayConnectId'] = transitGatewayConnectId;
    map['transitGatewayId'] = transitGatewayId;
    map['transportAttachmentId'] = transportAttachmentId;
    return map;
  }

  factory GetConnectResult.fromMap(Map<String, dynamic> map) {
    return GetConnectResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetConnectFilter>(
              map['filters'],
              (value) => GetConnectFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      protocol: map['protocol'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayConnectId: map['transitGatewayConnectId'] as String,
      transitGatewayId: map['transitGatewayId'] as String,
      transportAttachmentId: map['transportAttachmentId'] as String,
    );
  }
}
