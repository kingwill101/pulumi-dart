// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_basic_accelerate_ip_endpoint_relation_basic_accelerate_ip_endpoint_relation_args_doc}
/// The set of arguments for BasicAccelerateIpEndpointRelation.
/// {@endtemplate}
/// {@macro pulumi_ga_basic_accelerate_ip_endpoint_relation_basic_accelerate_ip_endpoint_relation_args_doc}
class BasicAccelerateIpEndpointRelationArgs {
  /// The ID of the Basic Accelerate IP.
  final pulumi.Input<String> accelerateIpId;
  /// The ID of the Basic GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the Basic Endpoint.
  final pulumi.Input<String> endpointId;

  /// Creates a new [BasicAccelerateIpEndpointRelationArgs].
  /// [accelerateIpId] The ID of the Basic Accelerate IP.
  /// [acceleratorId] The ID of the Basic GA instance.
  /// [endpointId] The ID of the Basic Endpoint.
  BasicAccelerateIpEndpointRelationArgs({
    required String accelerateIpId,
    required String acceleratorId,
    required String endpointId,
  }) :
      accelerateIpId = pulumi.Input.asInput<String>(accelerateIpId),
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      endpointId = pulumi.Input.asInput<String>(endpointId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpId': accelerateIpId,
      'acceleratorId': acceleratorId,
      'endpointId': endpointId,
    };
  }

  factory BasicAccelerateIpEndpointRelationArgs.fromMap(Map<String, dynamic> map) {
    return BasicAccelerateIpEndpointRelationArgs(
      accelerateIpId: map['accelerateIpId'] as String,
      acceleratorId: map['acceleratorId'] as String,
      endpointId: map['endpointId'] as String,
    );
  }
}

