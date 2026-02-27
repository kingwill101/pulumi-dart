// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_routing_response_cloudtasks_v2beta3.dart';

/// App Engine HTTP queue. The task will be delivered to the App Engine application hostname specified by its AppEngineHttpQueue and AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how the task's host URL is constructed. Using AppEngineHttpQueue requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform`
class AppEngineHttpQueueResponse {
  /// Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final AppEngineRoutingResponseCloudtasksV2beta3 appEngineRoutingOverride;

  AppEngineHttpQueueResponse({
    required this.appEngineRoutingOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appEngineRoutingOverride'] = appEngineRoutingOverride.toMap();
    return map;
  }

  factory AppEngineHttpQueueResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineHttpQueueResponse(
      appEngineRoutingOverride:
          AppEngineRoutingResponseCloudtasksV2beta3.fromMap(
              (map['appEngineRoutingOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
