// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_routing4.dart';

/// App Engine HTTP target. The task will be delivered to the App Engine application hostname specified by its AppEngineHttpTarget and AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how the task's host URL is constructed. Using AppEngineHttpTarget requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform`
class AppEngineHttpTarget3 {
  /// Overrides for the task-level app_engine_routing. If set, `app_engine_routing_override` is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final AppEngineRouting4? appEngineRoutingOverride;

  AppEngineHttpTarget3({
    this.appEngineRoutingOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineRoutingOverrideValue = appEngineRoutingOverride;
    if (appEngineRoutingOverrideValue != null) {
      map['appEngineRoutingOverride'] = appEngineRoutingOverrideValue.toMap();
    }
    return map;
  }

  factory AppEngineHttpTarget3.fromMap(Map<String, dynamic> map) {
    return AppEngineHttpTarget3(
      appEngineRoutingOverride: map['appEngineRoutingOverride'] == null
          ? null
          : AppEngineRouting4.fromMap(
              (map['appEngineRoutingOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
