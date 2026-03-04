// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_accelerator_instance_response.dart';
import 'application_accelerator_resource_requests_response.dart';

class ApplicationAcceleratorComponentResponse {
  final pulumi.Input<List<ApplicationAcceleratorInstanceResponse>> instances;
  final pulumi.Input<String> name;
  final pulumi.Input<ApplicationAcceleratorResourceRequestsResponse>?
  resourceRequests;

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
      'instances':
          pulumi.Input.mapInputValue<
            List<ApplicationAcceleratorInstanceResponse>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationAcceleratorInstanceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'resourceRequests':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationAcceleratorResourceRequestsResponse,
            Map<String, dynamic>
          >(resourceRequests, (value) => value.toMap()),
    };
  }

  factory ApplicationAcceleratorComponentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationAcceleratorComponentResponse(
      instances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ApplicationAcceleratorInstanceResponse>(
          map['instances']!,
          (value) => ApplicationAcceleratorInstanceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceRequests: (() {
        final guardedValue = map['resourceRequests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationAcceleratorResourceRequestsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
