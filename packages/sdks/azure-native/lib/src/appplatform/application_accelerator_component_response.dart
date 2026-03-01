// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_accelerator_instance_response.dart';
import 'application_accelerator_resource_requests_response.dart';

class ApplicationAcceleratorComponentResponse {
  final List<ApplicationAcceleratorInstanceResponse> instances;
  final String name;
  final ApplicationAcceleratorResourceRequestsResponse? resourceRequests;

  /// Creates a new [ApplicationAcceleratorComponentResponse].
  /// [instances] Required.
  /// [name] Required.
  /// [resourceRequests] Optional.
  ApplicationAcceleratorComponentResponse({
    required this.instances,
    required this.name,
    this.resourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': pulumi.Input.encodeList<ApplicationAcceleratorInstanceResponse, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'name': name,
      'resourceRequests': ?resourceRequests == null ? null : resourceRequests!.toMap(),
    };
  }

  factory ApplicationAcceleratorComponentResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationAcceleratorComponentResponse(
      instances: pulumi.Input.decodeList<ApplicationAcceleratorInstanceResponse>(map['instances'], (value) => ApplicationAcceleratorInstanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      resourceRequests: map['resourceRequests'] == null ? null : ApplicationAcceleratorResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
    );
  }
}

