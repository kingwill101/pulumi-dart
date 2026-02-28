// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_http_request_response_cloudtasks_v2beta2.dart';
import 'http_request_response_cloudtasks_v2beta2.dart';
import 'pull_message_response.dart';
import 'task_status_response.dart';

/// Result data returned by getTask.
class GetTaskCloudtasksV2beta2Result {
  /// App Engine HTTP request that is sent to the task's target. Can be set only if app_engine_http_target is set on the queue. An App Engine task is a task that has AppEngineHttpRequest set.
  final AppEngineHttpRequestResponseCloudtasksV2beta2 appEngineHttpRequest;
  /// The time that the task was created. `create_time` will be truncated to the nearest second.
  final String createTime;
  /// HTTP request that is sent to the task's target. An HTTP task is a task that has HttpRequest set.
  final HttpRequestResponseCloudtasksV2beta2 httpRequest;
  /// Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final String name;
  /// LeaseTasks to process the task. Can be set only if pull_target is set on the queue. A pull task is a task that has PullMessage set.
  final PullMessageResponse pullMessage;
  /// The time when the task is scheduled to be attempted. For App Engine queues, this is when the task will be attempted or retried. For pull queues, this is the time when the task is available to be leased; if a task is currently leased, this is the time when the current lease expires, that is, the time that the task was leased plus the lease_duration. `schedule_time` will be truncated to the nearest microsecond.
  final String scheduleTime;
  /// The task status.
  final TaskStatusResponse status;
  /// The view specifies which subset of the Task has been returned.
  final String view;

  /// Creates a new [GetTaskCloudtasksV2beta2Result].
  /// [appEngineHttpRequest] App Engine HTTP request that is sent to the task's target. Can be set only if app_engine_http_target is set on the queue. An App Engine task is a task that has AppEngineHttpRequest set.
  /// [createTime] The time that the task was created. `create_time` will be truncated to the nearest second.
  /// [httpRequest] HTTP request that is sent to the task's target. An HTTP task is a task that has HttpRequest set.
  /// [name] Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  /// [pullMessage] LeaseTasks to process the task. Can be set only if pull_target is set on the queue. A pull task is a task that has PullMessage set.
  /// [scheduleTime] The time when the task is scheduled to be attempted. For App Engine queues, this is when the task will be attempted or retried. For pull queues, this is the time when the task is available to be leased; if a task is currently leased, this is the time when the current lease expires, that is, the time that the task was leased plus the lease_duration. `schedule_time` will be truncated to the nearest microsecond.
  /// [status] The task status.
  /// [view] The view specifies which subset of the Task has been returned.
  GetTaskCloudtasksV2beta2Result({
    required this.appEngineHttpRequest,
    required this.createTime,
    required this.httpRequest,
    required this.name,
    required this.pullMessage,
    required this.scheduleTime,
    required this.status,
    required this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpRequest': appEngineHttpRequest.toMap(),
      'createTime': createTime,
      'httpRequest': httpRequest.toMap(),
      'name': name,
      'pullMessage': pullMessage.toMap(),
      'scheduleTime': scheduleTime,
      'status': status.toMap(),
      'view': view,
    };
  }

  factory GetTaskCloudtasksV2beta2Result.fromMap(Map<String, dynamic> map) {
    return GetTaskCloudtasksV2beta2Result(
      appEngineHttpRequest: AppEngineHttpRequestResponseCloudtasksV2beta2.fromMap((map['appEngineHttpRequest'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      httpRequest: HttpRequestResponseCloudtasksV2beta2.fromMap((map['httpRequest'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      pullMessage: PullMessageResponse.fromMap((map['pullMessage'] as Map).cast<String, dynamic>()),
      scheduleTime: map['scheduleTime'] as String,
      status: TaskStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      view: map['view'] as String,
    );
  }
}

