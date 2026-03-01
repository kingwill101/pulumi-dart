// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_routing_cloudtasks_v2beta3.dart';

/// App Engine HTTP queue. The task will be delivered to the App Engine application hostname specified by its AppEngineHttpQueue and AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how the task's host URL is constructed. Using AppEngineHttpQueue requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform`
class AppEngineHttpQueue {
  /// Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final AppEngineRoutingCloudtasksV2beta3? appEngineRoutingOverride;

  /// Creates a new [AppEngineHttpQueue].
  /// [appEngineRoutingOverride] Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  AppEngineHttpQueue({this.appEngineRoutingOverride});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineRoutingOverride': ?appEngineRoutingOverride == null
          ? null
          : appEngineRoutingOverride!.toMap(),
    };
  }

  factory AppEngineHttpQueue.fromMap(Map<String, dynamic> map) {
    return AppEngineHttpQueue(
      appEngineRoutingOverride: map['appEngineRoutingOverride'] == null
          ? null
          : AppEngineRoutingCloudtasksV2beta3.fromMap(
              (map['appEngineRoutingOverride'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
