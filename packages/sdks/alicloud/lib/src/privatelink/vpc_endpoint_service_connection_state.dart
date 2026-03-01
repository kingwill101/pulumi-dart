// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointServiceConnection resources.
class VpcEndpointServiceConnectionState {
  /// The bandwidth of the endpoint connection. Valid values: 1024 to 10240. Unit: Mbit/s.
  ///
  /// Note: The bandwidth of an endpoint connection is in the range of 100 to 10,240 Mbit/s. The default bandwidth is 1,024 Mbit/s. When the endpoint is connected to the endpoint service, the default bandwidth is the minimum bandwidth. In this case, the connection bandwidth range is 1,024 to 10,240 Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The endpoint ID.
  final pulumi.Input<String>? endpointId;
  /// The endpoint service ID.
  final pulumi.Input<String>? serviceId;
  /// The state of the endpoint connection.
  final pulumi.Input<String>? status;

  /// Creates a new [VpcEndpointServiceConnectionState].
  /// [bandwidth] The bandwidth of the endpoint connection. Valid values: 1024 to 10240. Unit: Mbit/s.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [endpointId] The endpoint ID.
  /// [serviceId] The endpoint service ID.
  /// [status] The state of the endpoint connection.
  VpcEndpointServiceConnectionState({
    pulumi.Output<int>? bandwidth,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? endpointId,
    pulumi.Output<String>? serviceId,
    pulumi.Output<String>? status,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'dryRun': ?dryRun,
      'endpointId': ?endpointId,
      'serviceId': ?serviceId,
      'status': ?status,
    };
  }

  factory VpcEndpointServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceConnectionState(
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

