// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_request_cloudtasks_v2beta3.dart';
import 'http_request_cloudtasks_v2beta3.dart';
import 'pull_message_cloudtasks_v2beta3.dart';
import 'task_response_view_cloudtasks_v2beta3.dart';

/// {@template pulumi_cloudtasks_v2beta3_task_cloudtasks_v2beta3_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2beta3_task_cloudtasks_v2beta3_args_doc}
class TaskCloudtasksV2beta3Args {
  /// HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has AppEngineHttpRequest set.
  final pulumi.Input<AppEngineHttpRequestCloudtasksV2beta3>?
      appEngineHttpRequest;

  /// The deadline for requests sent to the worker. If the worker does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the task according to the RetryConfig. Note that when the request is cancelled, Cloud Tasks will stop listening for the response, but whether the worker stops processing depends on the worker. For example, if the worker is stuck, it may not react to cancelled requests. The default and maximum values depend on the type of request: * For HTTP tasks, the default is 10 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine tasks, 0 indicates that the request has the default deadline. The default deadline depends on the [scaling type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling) of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. Regardless of the task's `dispatch_deadline`, the app handler will not run for longer than than the service's timeout. We recommend setting the `dispatch_deadline` to at most a few seconds more than the app handler's timeout. For more information see [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts). The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). `dispatch_deadline` will be truncated to the nearest millisecond. The deadline is an approximate deadline.
  final pulumi.Input<String>? dispatchDeadline;

  /// HTTP request that is sent to the task's target. An HTTP task is a task that has HttpRequest set.
  final pulumi.Input<HttpRequestCloudtasksV2beta3>? httpRequest;
  final pulumi.Input<String>? location;

  /// Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Pull Message contained in a task in a PULL queue type. This payload type cannot be explicitly set through Cloud Tasks API. Its purpose, currently is to provide backward compatibility with App Engine Task Queue [pull](https://cloud.google.com/appengine/docs/standard/java/taskqueue/pull/) queues to provide a way to inspect contents of pull tasks through the CloudTasks.GetTask.
  final pulumi.Input<PullMessageCloudtasksV2beta3>? pullMessage;
  final pulumi.Input<String> queueId;

  /// The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  final pulumi.Input<TaskResponseViewCloudtasksV2beta3>? responseView;

  /// The time when the task is scheduled to be attempted. For App Engine queues, this is when the task will be attempted or retried. `schedule_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String>? scheduleTime;

  /// Creates a new [TaskCloudtasksV2beta3Args].
  /// [appEngineHttpRequest] HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has AppEngineHttpRequest set.
  /// [dispatchDeadline] The deadline for requests sent to the worker. If the worker does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the task according to the RetryConfig. Note that when the request is cancelled, Cloud Tasks will stop listening for the response, but whether the worker stops processing depends on the worker. For example, if the worker is stuck, it may not react to cancelled requests. The default and maximum values depend on the type of request: * For HTTP tasks, the default is 10 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine tasks, 0 indicates that the request has the default deadline. The default deadline depends on the [scaling type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling) of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. Regardless of the task's `dispatch_deadline`, the app handler will not run for longer than than the service's timeout. We recommend setting the `dispatch_deadline` to at most a few seconds more than the app handler's timeout. For more information see [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts). The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). `dispatch_deadline` will be truncated to the nearest millisecond. The deadline is an approximate deadline.
  /// [httpRequest] HTTP request that is sent to the task's target. An HTTP task is a task that has HttpRequest set.
  /// [location] Optional.
  /// [name] Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  /// [project] Optional.
  /// [pullMessage] Pull Message contained in a task in a PULL queue type. This payload type cannot be explicitly set through Cloud Tasks API. Its purpose, currently is to provide backward compatibility with App Engine Task Queue [pull](https://cloud.google.com/appengine/docs/standard/java/taskqueue/pull/) queues to provide a way to inspect contents of pull tasks through the CloudTasks.GetTask.
  /// [queueId] Required.
  /// [responseView] The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  /// [scheduleTime] The time when the task is scheduled to be attempted. For App Engine queues, this is when the task will be attempted or retried. `schedule_time` will be truncated to the nearest microsecond.
  TaskCloudtasksV2beta3Args({
    AppEngineHttpRequestCloudtasksV2beta3? appEngineHttpRequest,
    String? dispatchDeadline,
    HttpRequestCloudtasksV2beta3? httpRequest,
    String? location,
    String? name,
    String? project,
    PullMessageCloudtasksV2beta3? pullMessage,
    required String queueId,
    TaskResponseViewCloudtasksV2beta3? responseView,
    String? scheduleTime,
  })  : appEngineHttpRequest =
            pulumi.Input.asOptionalInput<AppEngineHttpRequestCloudtasksV2beta3>(
                appEngineHttpRequest),
        dispatchDeadline =
            pulumi.Input.asOptionalInput<String>(dispatchDeadline),
        httpRequest =
            pulumi.Input.asOptionalInput<HttpRequestCloudtasksV2beta3>(
                httpRequest),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        pullMessage =
            pulumi.Input.asOptionalInput<PullMessageCloudtasksV2beta3>(
                pullMessage),
        queueId = pulumi.Input.asInput<String>(queueId),
        responseView =
            pulumi.Input.asOptionalInput<TaskResponseViewCloudtasksV2beta3>(
                responseView),
        scheduleTime = pulumi.Input.asOptionalInput<String>(scheduleTime);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineHttpRequestValue = appEngineHttpRequest;
    if (appEngineHttpRequestValue != null) {
      map['appEngineHttpRequest'] = pulumi.Input.mapOptionalInputValue<
              AppEngineHttpRequestCloudtasksV2beta3, Map<String, dynamic>>(
          appEngineHttpRequestValue, (value) => value.toMap());
    }
    final dispatchDeadlineValue = dispatchDeadline;
    if (dispatchDeadlineValue != null) {
      map['dispatchDeadline'] = dispatchDeadlineValue;
    }
    final httpRequestValue = httpRequest;
    if (httpRequestValue != null) {
      map['httpRequest'] = pulumi.Input.mapOptionalInputValue<
          HttpRequestCloudtasksV2beta3,
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
      map['pullMessage'] = pulumi.Input.mapOptionalInputValue<
          PullMessageCloudtasksV2beta3,
          Map<String, dynamic>>(pullMessageValue, (value) => value.toMap());
    }
    map['queueId'] = queueId;
    final responseViewValue = responseView;
    if (responseViewValue != null) {
      map['responseView'] = pulumi.Input.mapOptionalInputValue<
          TaskResponseViewCloudtasksV2beta3,
          String>(responseViewValue, (value) => value.value);
    }
    final scheduleTimeValue = scheduleTime;
    if (scheduleTimeValue != null) {
      map['scheduleTime'] = scheduleTimeValue;
    }
    return map;
  }

  factory TaskCloudtasksV2beta3Args.fromMap(Map<String, dynamic> map) {
    return TaskCloudtasksV2beta3Args(
      appEngineHttpRequest: map['appEngineHttpRequest'] == null
          ? null
          : AppEngineHttpRequestCloudtasksV2beta3.fromMap(
              (map['appEngineHttpRequest'] as Map).cast<String, dynamic>()),
      dispatchDeadline: map['dispatchDeadline'] == null
          ? null
          : map['dispatchDeadline'] as String,
      httpRequest: map['httpRequest'] == null
          ? null
          : HttpRequestCloudtasksV2beta3.fromMap(
              (map['httpRequest'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pullMessage: map['pullMessage'] == null
          ? null
          : PullMessageCloudtasksV2beta3.fromMap(
              (map['pullMessage'] as Map).cast<String, dynamic>()),
      queueId: map['queueId'] as String,
      responseView: map['responseView'] == null
          ? null
          : TaskResponseViewCloudtasksV2beta3.fromValue(
              map['responseView'] as String),
      scheduleTime:
          map['scheduleTime'] == null ? null : map['scheduleTime'] as String,
    );
  }
}
