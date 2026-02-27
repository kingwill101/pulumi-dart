// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Service.
class ServiceServicemanagementV1Args {
  /// ID of the project that produces and owns this service.
  final pulumi.Input<String>? producerProjectId;

  /// The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  final pulumi.Input<String>? serviceName;

  ServiceServicemanagementV1Args({
    this.producerProjectId,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final producerProjectIdValue = producerProjectId;
    if (producerProjectIdValue != null) {
      map['producerProjectId'] = producerProjectIdValue;
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    return map;
  }

  factory ServiceServicemanagementV1Args.fromMap(Map<String, dynamic> map) {
    return ServiceServicemanagementV1Args(
      producerProjectId:
          pulumi.Input.asOptionalInput<String>(map['producerProjectId']),
      serviceName: pulumi.Input.asOptionalInput<String>(map['serviceName']),
    );
  }
}
