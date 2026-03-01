// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_request.dart';
import 'http_request.dart';
import 'task_response_view.dart';

/// {@template pulumi_cloudtasks_v2_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2_task_args_doc}
class TaskArgs {
  /// HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has AppEngineHttpRequest set.
  final pulumi.Input<AppEngineHttpRequest>? appEngineHttpRequest;

  /// The deadline for requests sent to the worker. If the worker does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the task according to the RetryConfig. Note that when the request is cancelled, Cloud Tasks will stop listening for the response, but whether the worker stops processing depends on the worker. For example, if the worker is stuck, it may not react to cancelled requests. The default and maximum values depend on the type of request: * For HTTP tasks, the default is 10 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine tasks, 0 indicates that the request has the default deadline. The default deadline depends on the [scaling type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling) of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. Regardless of the task's `dispatch_deadline`, the app handler will not run for longer than than the service's timeout. We recommend setting the `dispatch_deadline` to at most a few seconds more than the app handler's timeout. For more information see [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts). The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). `dispatch_deadline` will be truncated to the nearest millisecond. The deadline is an approximate deadline.
  final pulumi.Input<String>? dispatchDeadline;

  /// HTTP request that is sent to the worker. An HTTP task is a task that has HttpRequest set.
  final pulumi.Input<HttpRequest>? httpRequest;
  final pulumi.Input<String>? location;

  /// Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;

  /// The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  final pulumi.Input<TaskResponseView>? responseView;

  /// The time when the task is scheduled to be attempted or retried. `schedule_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String>? scheduleTime;

  /// Creates a new [TaskArgs].
  /// [appEngineHttpRequest] HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has AppEngineHttpRequest set.
  /// [dispatchDeadline] The deadline for requests sent to the worker. If the worker does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the task according to the RetryConfig. Note that when the request is cancelled, Cloud Tasks will stop listening for the response, but whether the worker stops processing depends on the worker. For example, if the worker is stuck, it may not react to cancelled requests. The default and maximum values depend on the type of request: * For HTTP tasks, the default is 10 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine tasks, 0 indicates that the request has the default deadline. The default deadline depends on the [scaling type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling) of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. Regardless of the task's `dispatch_deadline`, the app handler will not run for longer than than the service's timeout. We recommend setting the `dispatch_deadline` to at most a few seconds more than the app handler's timeout. For more information see [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts). The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). `dispatch_deadline` will be truncated to the nearest millisecond. The deadline is an approximate deadline.
  /// [httpRequest] HTTP request that is sent to the worker. An HTTP task is a task that has HttpRequest set.
  /// [location] Optional.
  /// [name] Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  /// [project] Optional.
  /// [queueId] Required.
  /// [responseView] The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  /// [scheduleTime] The time when the task is scheduled to be attempted or retried. `schedule_time` will be truncated to the nearest microsecond.
  TaskArgs({
    AppEngineHttpRequest? appEngineHttpRequest,
    String? dispatchDeadline,
    HttpRequest? httpRequest,
    String? location,
    String? name,
    String? project,
    required String queueId,
    TaskResponseView? responseView,
    String? scheduleTime,
  }) : appEngineHttpRequest = pulumi
           .Input.asOptionalInput<AppEngineHttpRequest>(appEngineHttpRequest),
       dispatchDeadline = pulumi.Input.asOptionalInput<String>(
         dispatchDeadline,
       ),
       httpRequest = pulumi.Input.asOptionalInput<HttpRequest>(httpRequest),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       queueId = pulumi.Input.asInput<String>(queueId),
       responseView = pulumi.Input.asOptionalInput<TaskResponseView>(
         responseView,
       ),
       scheduleTime = pulumi.Input.asOptionalInput<String>(scheduleTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpRequest':
          ?pulumi.Input.mapOptionalInputValue<
            AppEngineHttpRequest,
            Map<String, dynamic>
          >(appEngineHttpRequest, (value) => value.toMap()),
      'dispatchDeadline': ?dispatchDeadline,
      'httpRequest':
          ?pulumi.Input.mapOptionalInputValue<
            HttpRequest,
            Map<String, dynamic>
          >(httpRequest, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'queueId': queueId,
      'responseView':
          ?pulumi.Input.mapOptionalInputValue<TaskResponseView, String>(
            responseView,
            (value) => value.value,
          ),
      'scheduleTime': ?scheduleTime,
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      appEngineHttpRequest: map['appEngineHttpRequest'] == null
          ? null
          : AppEngineHttpRequest.fromMap(
              (map['appEngineHttpRequest'] as Map).cast<String, dynamic>(),
            ),
      dispatchDeadline: map['dispatchDeadline'] == null
          ? null
          : map['dispatchDeadline'] as String,
      httpRequest: map['httpRequest'] == null
          ? null
          : HttpRequest.fromMap(
              (map['httpRequest'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      queueId: map['queueId'] as String,
      responseView: map['responseView'] == null
          ? null
          : TaskResponseView.fromValue(map['responseView'] as String),
      scheduleTime: map['scheduleTime'] == null
          ? null
          : map['scheduleTime'] as String,
    );
  }
}
