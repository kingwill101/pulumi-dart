// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_tool_portal_instance_response.dart';
import 'dev_tool_portal_resource_requests_response.dart';

class DevToolPortalComponentResponse {
  /// Collection of instances belong to Dev Tool Portal.
  final pulumi.Input<List<DevToolPortalInstanceResponse>> instances;
  final pulumi.Input<String> name;
  /// The requested resource quantity for required CPU and Memory.
  final pulumi.Input<DevToolPortalResourceRequestsResponse> resourceRequests;

  /// Creates a new [DevToolPortalComponentResponse].
  /// [instances] Collection of instances belong to Dev Tool Portal.
  /// [name] Required.
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  DevToolPortalComponentResponse({
    required this.instances,
    required this.name,
    required this.resourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': pulumi.Input.mapInputValue<List<DevToolPortalInstanceResponse>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<DevToolPortalInstanceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'resourceRequests': pulumi.Input.mapInputValue<DevToolPortalResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
    };
  }

  factory DevToolPortalComponentResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalComponentResponse(
      instances: (pulumi.Input.decodeList<DevToolPortalInstanceResponse>(map['instances'], (value) => DevToolPortalInstanceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      resourceRequests: (DevToolPortalResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

