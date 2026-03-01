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
  VpcEndpointServiceConnectionArgs({
    int? bandwidth,
    bool? dryRun,
    required String endpointId,
    required String serviceId,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      endpointId = pulumi.Input.asInput<String>(endpointId),
      serviceId = pulumi.Input.asInput<String>(serviceId);

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
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as int,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      endpointId: map['endpointId'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}

