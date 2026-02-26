// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_service.dart';

/// Represents a target of an invocation over HTTP.
class Destination3 {
  /// Cloud Run fully-managed service that receives the events. The service should be running in the same project as the trigger.
  final CloudRunService? cloudRunService;

  Destination3({
    this.cloudRunService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudRunServiceValue = cloudRunService;
    if (cloudRunServiceValue != null) {
      map['cloudRunService'] = cloudRunServiceValue.toMap();
    }
    return map;
  }

  factory Destination3.fromMap(Map<String, dynamic> map) {
    return Destination3(
      cloudRunService: map['cloudRunService'] == null
          ? null
          : CloudRunService.fromMap(
              (map['cloudRunService'] as Map).cast<String, dynamic>()),
    );
  }
}
