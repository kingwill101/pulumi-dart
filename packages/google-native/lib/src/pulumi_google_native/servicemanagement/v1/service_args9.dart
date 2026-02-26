// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Service.
class ServiceArgs9 {
  /// ID of the project that produces and owns this service.
  final Input<String>? producerProjectId;

  /// The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  final Input<String>? serviceName;

  ServiceArgs9({
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

  factory ServiceArgs9.fromMap(Map<String, dynamic> map) {
    return ServiceArgs9(
      producerProjectId:
          Input.asOptionalInput<String>(map['producerProjectId']),
      serviceName: Input.asOptionalInput<String>(map['serviceName']),
    );
  }
}
