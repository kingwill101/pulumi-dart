// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_vpc_endpoint_service_connection_vpc_endpoint_service_connection_args_doc}
/// The set of arguments for VpcEndpointServiceConnection.
/// {@endtemplate}
/// {@macro pulumi_privatelink_vpc_endpoint_service_connection_vpc_endpoint_service_connection_args_doc}
class VpcEndpointServiceConnectionArgs {
  /// The bandwidth of the endpoint connection. Valid values: 1024 to 10240. Unit: Mbit/s.
  ///
  /// Note: The bandwidth of an endpoint connection is in the range of 100 to 10,240 Mbit/s. The default bandwidth is 1,024 Mbit/s. When the endpoint is connected to the endpoint service, the default bandwidth is the minimum bandwidth. In this case, the connection bandwidth range is 1,024 to 10,240 Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The endpoint ID.
  final pulumi.Input<String> endpointId;
  /// The endpoint service ID.
  final pulumi.Input<String> serviceId;

  /// Creates a new [VpcEndpointServiceConnectionArgs].
  /// [bandwidth] The bandwidth of the endpoint connection. Valid values: 1024 to 10240. Unit: Mbit/s.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [endpointId] The endpoint ID.
  /// [serviceId] The endpoint service ID.
  const VpcEndpointServiceConnectionArgs({
    this.bandwidth,
    this.dryRun,
    required this.endpointId,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'dryRun': ?dryRun,
      'endpointId': endpointId,
      'serviceId': serviceId,
    };
  }

  factory VpcEndpointServiceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceConnectionArgs(
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}

