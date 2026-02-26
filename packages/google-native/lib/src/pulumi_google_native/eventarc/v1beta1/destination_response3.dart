// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_service_response.dart';

/// Represents a target of an invocation over HTTP.
class DestinationResponse3 {
  /// Cloud Run fully-managed service that receives the events. The service should be running in the same project as the trigger.
  final CloudRunServiceResponse cloudRunService;

  DestinationResponse3({
    required this.cloudRunService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudRunService'] = cloudRunService.toMap();
    return map;
  }

  factory DestinationResponse3.fromMap(Map<String, dynamic> map) {
    return DestinationResponse3(
      cloudRunService: CloudRunServiceResponse.fromMap(
          (map['cloudRunService'] as Map).cast<String, dynamic>()),
    );
  }
}
