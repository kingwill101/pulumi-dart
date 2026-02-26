import 'package:pulumi/pulumi.dart';
import 'app_engine_http_request_response3.dart';
import 'attempt_response2.dart';
import 'http_request_response3.dart';
import 'pull_message_response2.dart';
import 'task_args3.dart';

/// Creates a task and adds it to a queue. Tasks cannot be updated after creation; there is no UpdateTask command. * The maximum task size is 100KB.
class Task3 extends CustomResource {
  /// HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has AppEngineHttpRequest set.
  late final Output<AppEngineHttpRequestResponse3> appEngineHttpRequest;

  /// The time that the task was created. `create_time` will be truncated to the nearest second.
  late final Output<String> createTime;

  /// The number of attempts dispatched. This count includes attempts which have been dispatched but haven't received a response.
  late final Output<int> dispatchCount;

  /// The deadline for requests sent to the worker. If the worker does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the task according to the RetryConfig. Note that when the request is cancelled, Cloud Tasks will stop listening for the response, but whether the worker stops processing depends on the worker. For example, if the worker is stuck, it may not react to cancelled requests. The default and maximum values depend on the type of request: * For HTTP tasks, the default is 10 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine tasks, 0 indicates that the request has the default deadline. The default deadline depends on the [scaling type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling) of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. Regardless of the task's `dispatch_deadline`, the app handler will not run for longer than than the service's timeout. We recommend setting the `dispatch_deadline` to at most a few seconds more than the app handler's timeout. For more information see [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts). The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). `dispatch_deadline` will be truncated to the nearest millisecond. The deadline is an approximate deadline.
  late final Output<String> dispatchDeadline;

  /// The status of the task's first attempt. Only dispatch_time will be set. The other Attempt information is not retained by Cloud Tasks.
  late final Output<AttemptResponse2> firstAttempt;

  /// HTTP request that is sent to the task's target. An HTTP task is a task that has HttpRequest set.
  late final Output<HttpRequestResponse3> httpRequest;

  /// The status of the task's last attempt.
  late final Output<AttemptResponse2> lastAttempt;
  late final Output<String> location;

  /// Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  late final Output<String> name;
  late final Output<String> project;

  /// Pull Message contained in a task in a PULL queue type. This payload type cannot be explicitly set through Cloud Tasks API. Its purpose, currently is to provide backward compatibility with App Engine Task Queue [pull](https://cloud.google.com/appengine/docs/standard/java/taskqueue/pull/) queues to provide a way to inspect contents of pull tasks through the CloudTasks.GetTask.
  late final Output<PullMessageResponse2> pullMessage;
  late final Output<String> queueId;

  /// The number of attempts which have received a response.
  late final Output<int> responseCount;

  /// The time when the task is scheduled to be attempted. For App Engine queues, this is when the task will be attempted or retried. `schedule_time` will be truncated to the nearest microsecond.
  late final Output<String> scheduleTime;

  /// The view specifies which subset of the Task has been returned.
  late final Output<String> view;

  Task3(
    String name, {
    TaskArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudtasks/v2beta3:Task',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appEngineHttpRequest =
        registerOutput<AppEngineHttpRequestResponse3>('appEngineHttpRequest');
    this.createTime = registerOutput<String>('createTime');
    this.dispatchCount = registerOutput<int>('dispatchCount');
    this.dispatchDeadline = registerOutput<String>('dispatchDeadline');
    this.firstAttempt = registerOutput<AttemptResponse2>('firstAttempt');
    this.httpRequest = registerOutput<HttpRequestResponse3>('httpRequest');
    this.lastAttempt = registerOutput<AttemptResponse2>('lastAttempt');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pullMessage = registerOutput<PullMessageResponse2>('pullMessage');
    this.queueId = registerOutput<String>('queueId');
    this.responseCount = registerOutput<int>('responseCount');
    this.scheduleTime = registerOutput<String>('scheduleTime');
    this.view = registerOutput<String>('view');
  }
}
