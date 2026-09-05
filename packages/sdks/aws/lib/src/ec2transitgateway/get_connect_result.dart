// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connect_filter.dart';

/// Result data returned by getConnect.
class GetConnectResult {
  final List<GetConnectFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Tunnel protocol
  final String? protocol;
  final String? region;
  /// Key-value tags for the EC2 Transit Gateway Connect
  final Map<String, String>? tags;
  final String? transitGatewayConnectId;
  /// EC2 Transit Gateway identifier
  final String? transitGatewayId;
  /// The underlaying VPC attachment
  final String? transportAttachmentId;

  /// Creates a new [GetConnectResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [protocol] Tunnel protocol
  /// [region] Optional.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect
  /// [transitGatewayConnectId] Optional.
  /// [transitGatewayId] EC2 Transit Gateway identifier
  /// [transportAttachmentId] The underlaying VPC attachment
  const GetConnectResult({
    this.filters,
    this.id,
    this.protocol,
    this.region,
    this.tags,
    this.transitGatewayConnectId,
    this.transitGatewayId,
    this.transportAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'protocol': ?protocol,
      'region': ?region,
      'tags': ?tags,
      'transitGatewayConnectId': ?transitGatewayConnectId,
      'transitGatewayId': ?transitGatewayId,
      'transportAttachmentId': ?transportAttachmentId,
    };
  }

  factory GetConnectResult.fromMap(Map<String, dynamic> map) {
    return GetConnectResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectFilter>(guardedValue, (value) => GetConnectFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayConnectId: (() { final guardedValue = map['transitGatewayConnectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transportAttachmentId: (() { final guardedValue = map['transportAttachmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
