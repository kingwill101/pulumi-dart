// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_instance_response.dart';
import 'gateway_operator_resource_requests_response.dart';

/// Properties of the Spring Cloud Gateway Operator.
class GatewayOperatorPropertiesResponse {
  /// Collection of instances belong to Spring Cloud Gateway operator.
  final List<GatewayInstanceResponse> instances;
  /// The requested resource quantity for required CPU and Memory.
  final GatewayOperatorResourceRequestsResponse resourceRequests;

  /// Creates a new [GatewayOperatorPropertiesResponse].
  /// [instances] Collection of instances belong to Spring Cloud Gateway operator.
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  GatewayOperatorPropertiesResponse({
    required this.instances,
    required this.resourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': pulumi.Input.encodeList<GatewayInstanceResponse, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'resourceRequests': resourceRequests.toMap(),
    };
  }

  factory GatewayOperatorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayOperatorPropertiesResponse(
      instances: pulumi.Input.decodeList<GatewayInstanceResponse>(map['instances'], (value) => GatewayInstanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceRequests: GatewayOperatorResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
    );
  }
}

