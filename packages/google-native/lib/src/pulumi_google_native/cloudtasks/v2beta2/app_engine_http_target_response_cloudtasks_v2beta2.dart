// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_routing_response_cloudtasks_v2beta2.dart';

/// App Engine HTTP target. The task will be delivered to the App Engine application hostname specified by its AppEngineHttpTarget and AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how the task's host URL is constructed. Using AppEngineHttpTarget requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform`
class AppEngineHttpTargetResponseCloudtasksV2beta2 {
  /// Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final AppEngineRoutingResponseCloudtasksV2beta2 appEngineRoutingOverride;

  AppEngineHttpTargetResponseCloudtasksV2beta2({
    required this.appEngineRoutingOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appEngineRoutingOverride'] = appEngineRoutingOverride.toMap();
    return map;
  }

  factory AppEngineHttpTargetResponseCloudtasksV2beta2.fromMap(
      Map<String, dynamic> map) {
    return AppEngineHttpTargetResponseCloudtasksV2beta2(
      appEngineRoutingOverride:
          AppEngineRoutingResponseCloudtasksV2beta2.fromMap(
              (map['appEngineRoutingOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
