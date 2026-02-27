// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_request_cloudtasks_v2beta2.dart';
import 'http_request_cloudtasks_v2beta2.dart';
import 'pull_message.dart';
import 'task_response_view_cloudtasks_v2beta2.dart';

/// The set of arguments for Task.
class TaskCloudtasksV2beta2Args {
  /// App Engine HTTP request that is sent to the task's target. Can be set only if app_engine_http_target is set on the queue. An App Engine task is a task that has AppEngineHttpRequest set.
  final pulumi.Input<AppEngineHttpRequestCloudtasksV2beta2>?
      appEngineHttpRequest;

  /// HTTP request that is sent to the task's target. An HTTP task is a task that has HttpRequest set.
  final pulumi.Input<HttpRequestCloudtasksV2beta2>? httpRequest;
  final pulumi.Input<String>? location;

  /// Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// LeaseTasks to process the task. Can be set only if pull_target is set on the queue. A pull task is a task that has PullMessage set.
  final pulumi.Input<PullMessage>? pullMessage;
  final pulumi.Input<String> queueId;

  /// The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  final pulumi.Input<TaskResponseViewCloudtasksV2beta2>? responseView;

  /// The time when the task is scheduled to be attempted. For App Engine queues, this is when the task will be attempted or retried. For pull queues, this is the time when the task is available to be leased; if a task is currently leased, this is the time when the current lease expires, that is, the time that the task was leased plus the lease_duration. `schedule_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String>? scheduleTime;

  TaskCloudtasksV2beta2Args({
    this.appEngineHttpRequest,
    this.httpRequest,
    this.location,
    this.name,
    this.project,
    this.pullMessage,
    required this.queueId,
    this.responseView,
    this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineHttpRequestValue = appEngineHttpRequest;
    if (appEngineHttpRequestValue != null) {
      map['appEngineHttpRequest'] = pulumi.Input.mapOptionalInputValue<
              AppEngineHttpRequestCloudtasksV2beta2, Map<String, dynamic>>(
          appEngineHttpRequestValue, (value) => value.toMap());
    }
    final httpRequestValue = httpRequest;
    if (httpRequestValue != null) {
      map['httpRequest'] = pulumi.Input.mapOptionalInputValue<
          HttpRequestCloudtasksV2beta2,
          Map<String, dynamic>>(httpRequestValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pullMessageValue = pullMessage;
    if (pullMessageValue != null) {
      map['pullMessage'] =
          pulumi.Input.mapOptionalInputValue<PullMessage, Map<String, dynamic>>(
              pullMessageValue, (value) => value.toMap());
    }
    map['queueId'] = queueId;
    final responseViewValue = responseView;
    if (responseViewValue != null) {
      map['responseView'] = pulumi.Input.mapOptionalInputValue<
          TaskResponseViewCloudtasksV2beta2,
          String>(responseViewValue, (value) => value.value);
    }
    final scheduleTimeValue = scheduleTime;
    if (scheduleTimeValue != null) {
      map['scheduleTime'] = scheduleTimeValue;
    }
    return map;
  }

  factory TaskCloudtasksV2beta2Args.fromMap(Map<String, dynamic> map) {
    return TaskCloudtasksV2beta2Args(
      appEngineHttpRequest:
          pulumi.Input.asOptionalInput<AppEngineHttpRequestCloudtasksV2beta2>(
              map['appEngineHttpRequest']),
      httpRequest: pulumi.Input.asOptionalInput<HttpRequestCloudtasksV2beta2>(
          map['httpRequest']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pullMessage:
          pulumi.Input.asOptionalInput<PullMessage>(map['pullMessage']),
      queueId: pulumi.Input.asInput<String>(map['queueId']),
      responseView:
          pulumi.Input.asOptionalInput<TaskResponseViewCloudtasksV2beta2>(
              map['responseView']),
      scheduleTime: pulumi.Input.asOptionalInput<String>(map['scheduleTime']),
    );
  }
}
