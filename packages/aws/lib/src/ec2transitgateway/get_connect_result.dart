// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connect_filter.dart';

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

  /// Creates a new [GetConnectResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [protocol] Tunnel protocol
  /// [region] Required.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect
  /// [transitGatewayConnectId] Required.
  /// [transitGatewayId] EC2 Transit Gateway identifier
  /// [transportAttachmentId] The underlaying VPC attachment
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
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<GetConnectFilter, Map<String, dynamic>>(
              filters!,
              (value) => value.toMap(),
            ),
      'id': id,
      'protocol': protocol,
      'region': region,
      'tags': tags,
      'transitGatewayConnectId': transitGatewayConnectId,
      'transitGatewayId': transitGatewayId,
      'transportAttachmentId': transportAttachmentId,
    };
  }

  factory GetConnectResult.fromMap(Map<String, dynamic> map) {
    return GetConnectResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetConnectFilter>(
              map['filters'],
              (value) => GetConnectFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
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
