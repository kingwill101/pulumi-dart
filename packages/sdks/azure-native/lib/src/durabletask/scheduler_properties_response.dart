// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'scheduler_sku_response.dart';

/// Details of the Scheduler
class SchedulerPropertiesResponse {
  /// URL of the durable task scheduler
  final pulumi.Input<String> endpoint;
  /// IP allow list for durable task scheduler. Values can be IPv4, IPv6 or CIDR
  final pulumi.Input<List<String>> ipAllowlist;
  /// The private endpoints exposed by this resource
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The status of the last operation
  final pulumi.Input<String> provisioningState;
  /// Allow or disallow public network access to durable task scheduler
  final pulumi.Input<String?>? publicNetworkAccess;
  /// SKU of the durable task scheduler
  final pulumi.Input<SchedulerSkuResponse> sku;

  /// Creates a new [SchedulerPropertiesResponse].
  /// [endpoint] URL of the durable task scheduler
  /// [ipAllowlist] IP allow list for durable task scheduler. Values can be IPv4, IPv6 or CIDR
  /// [privateEndpointConnections] The private endpoints exposed by this resource
  /// [provisioningState] The status of the last operation
  /// [publicNetworkAccess] Allow or disallow public network access to durable task scheduler
  /// [sku] SKU of the durable task scheduler
  const SchedulerPropertiesResponse({
    required this.endpoint,
    required this.ipAllowlist,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'ipAllowlist': ipAllowlist,
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': pulumi.Input.mapInputValue<SchedulerSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory SchedulerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchedulerPropertiesResponse(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      ipAllowlist: pulumi.Input.fromValue((map['ipAllowlist'] as List).cast<String>()),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(SchedulerSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())),
    );
  }
}
