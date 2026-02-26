// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'app_engine_http_request.dart';
import 'http_request.dart';
import 'task_response_view.dart';

/// The set of arguments for Task.
class TaskArgs {
  /// HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has AppEngineHttpRequest set.
  final Input<AppEngineHttpRequest>? appEngineHttpRequest;

  /// The deadline for requests sent to the worker. If the worker does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the task according to the RetryConfig. Note that when the request is cancelled, Cloud Tasks will stop listening for the response, but whether the worker stops processing depends on the worker. For example, if the worker is stuck, it may not react to cancelled requests. The default and maximum values depend on the type of request: * For HTTP tasks, the default is 10 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine tasks, 0 indicates that the request has the default deadline. The default deadline depends on the [scaling type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling) of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. Regardless of the task's `dispatch_deadline`, the app handler will not run for longer than than the service's timeout. We recommend setting the `dispatch_deadline` to at most a few seconds more than the app handler's timeout. For more information see [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts). The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). `dispatch_deadline` will be truncated to the nearest millisecond. The deadline is an approximate deadline.
  final Input<String>? dispatchDeadline;

  /// HTTP request that is sent to the worker. An HTTP task is a task that has HttpRequest set.
  final Input<HttpRequest>? httpRequest;
  final Input<String>? location;

  /// Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> queueId;

  /// The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  final Input<TaskResponseView>? responseView;

  /// The time when the task is scheduled to be attempted or retried. `schedule_time` will be truncated to the nearest microsecond.
  final Input<String>? scheduleTime;

  TaskArgs({
    this.appEngineHttpRequest,
    this.dispatchDeadline,
    this.httpRequest,
    this.location,
    this.name,
    this.project,
    required this.queueId,
    this.responseView,
    this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineHttpRequestValue = appEngineHttpRequest;
    if (appEngineHttpRequestValue != null) {
      map['appEngineHttpRequest'] = Input.mapOptionalInputValue<
              AppEngineHttpRequest, Map<String, dynamic>>(
          appEngineHttpRequestValue, (value) => value.toMap());
    }
    final dispatchDeadlineValue = dispatchDeadline;
    if (dispatchDeadlineValue != null) {
      map['dispatchDeadline'] = dispatchDeadlineValue;
    }
    final httpRequestValue = httpRequest;
    if (httpRequestValue != null) {
      map['httpRequest'] =
          Input.mapOptionalInputValue<HttpRequest, Map<String, dynamic>>(
              httpRequestValue, (value) => value.toMap());
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
    map['queueId'] = queueId;
    final responseViewValue = responseView;
    if (responseViewValue != null) {
      map['responseView'] =
          Input.mapOptionalInputValue<TaskResponseView, String>(
              responseViewValue, (value) => value.value);
    }
    final scheduleTimeValue = scheduleTime;
    if (scheduleTimeValue != null) {
      map['scheduleTime'] = scheduleTimeValue;
    }
    return map;
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      appEngineHttpRequest: Input.asOptionalInput<AppEngineHttpRequest>(
          map['appEngineHttpRequest']),
      dispatchDeadline: Input.asOptionalInput<String>(map['dispatchDeadline']),
      httpRequest: Input.asOptionalInput<HttpRequest>(map['httpRequest']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      queueId: Input.asInput<String>(map['queueId']),
      responseView:
          Input.asOptionalInput<TaskResponseView>(map['responseView']),
      scheduleTime: Input.asOptionalInput<String>(map['scheduleTime']),
    );
  }
}
