// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'end_condition.dart';

/// The set of arguments for Waiter.
class WaiterArgs {
  final Input<String> configId;

  /// [Optional] The failure condition of this waiter. If this condition is met, `done` will be set to `true` and the `error` code will be set to `ABORTED`. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated. This value is optional; if no failure condition is set, the only failure scenario will be a timeout.
  final Input<EndCondition>? failure;

  /// The name of the Waiter resource, in the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME] The `[PROJECT_ID]` must be a valid Google Cloud project ID, the `[CONFIG_NAME]` must be a valid RuntimeConfig resource, the `[WAITER_NAME]` must match RFC 1035 segment specification, and the length of `[WAITER_NAME]` must be less than 64 bytes. After you create a Waiter resource, you cannot change the resource name.
  final Input<String>? name;
  final Input<String>? project;

  /// An optional but recommended unique `request_id`. If the server receives two `create()` requests with the same `request_id`, then the second request will be ignored and the first resource created and stored in the backend is returned. Empty `request_id` fields are ignored. It is responsibility of the client to ensure uniqueness of the `request_id` strings. `request_id` strings are limited to 64 characters.
  final Input<String>? requestId;

  /// [Required] The success condition. If this condition is met, `done` will be set to `true` and the `error` value will remain unset. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated.
  final Input<EndCondition>? success;

  /// [Required] Specifies the timeout of the waiter in seconds, beginning from the instant that `waiters().create` method is called. If this time elapses before the success or failure conditions are met, the waiter fails and sets the `error` code to `DEADLINE_EXCEEDED`.
  final Input<String>? timeout;

  WaiterArgs({
    required this.configId,
    this.failure,
    this.name,
    this.project,
    this.requestId,
    this.success,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final failureValue = failure;
    if (failureValue != null) {
      map['failure'] =
          Input.mapOptionalInputValue<EndCondition, Map<String, dynamic>>(
              failureValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final successValue = success;
    if (successValue != null) {
      map['success'] =
          Input.mapOptionalInputValue<EndCondition, Map<String, dynamic>>(
              successValue, (value) => value.toMap());
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory WaiterArgs.fromMap(Map<String, dynamic> map) {
    return WaiterArgs(
      configId: Input.asInput<String>(map['configId']),
      failure: Input.asOptionalInput<EndCondition>(map['failure']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      success: Input.asOptionalInput<EndCondition>(map['success']),
      timeout: Input.asOptionalInput<String>(map['timeout']),
    );
  }
}
