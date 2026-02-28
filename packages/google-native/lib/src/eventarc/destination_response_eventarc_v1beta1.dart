// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_service_response.dart';

/// Represents a target of an invocation over HTTP.
class DestinationResponseEventarcV1beta1 {
  /// Cloud Run fully-managed service that receives the events. The service should be running in the same project as the trigger.
  final CloudRunServiceResponse cloudRunService;

  /// Creates a new [DestinationResponseEventarcV1beta1].
  /// [cloudRunService] Cloud Run fully-managed service that receives the events. The service should be running in the same project as the trigger.
  DestinationResponseEventarcV1beta1({
    required this.cloudRunService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudRunService'] = cloudRunService.toMap();
    return map;
  }

  factory DestinationResponseEventarcV1beta1.fromMap(Map<String, dynamic> map) {
    return DestinationResponseEventarcV1beta1(
      cloudRunService: CloudRunServiceResponse.fromMap(
          (map['cloudRunService'] as Map).cast<String, dynamic>()),
    );
  }
}
