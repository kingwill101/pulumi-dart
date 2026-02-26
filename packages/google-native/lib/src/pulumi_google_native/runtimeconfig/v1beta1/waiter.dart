import 'package:pulumi/pulumi.dart';
import 'end_condition_response.dart';
import 'status_response25.dart';
import 'waiter_args.dart';

/// Creates a Waiter resource. This operation returns a long-running Operation resource which can be polled for completion. However, a waiter with the given name will exist (and can be retrieved) prior to the operation completing. If the operation fails, the failed Waiter resource will still exist and must be deleted prior to subsequent creation attempts.
class Waiter extends CustomResource {
  late final Output<String> configId;

  /// The instant at which this Waiter resource was created. Adding the value of `timeout` to this instant yields the timeout deadline for the waiter.
  late final Output<String> createTime;

  /// If the value is `false`, it means the waiter is still waiting for one of its conditions to be met. If true, the waiter has finished. If the waiter finished due to a timeout or failure, `error` will be set.
  late final Output<bool> done;

  /// If the waiter ended due to a failure or timeout, this value will be set.
  late final Output<StatusResponse25> error;

  /// [Optional] The failure condition of this waiter. If this condition is met, `done` will be set to `true` and the `error` code will be set to `ABORTED`. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated. This value is optional; if no failure condition is set, the only failure scenario will be a timeout.
  late final Output<EndConditionResponse> failure;

  /// The name of the Waiter resource, in the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME] The `[PROJECT_ID]` must be a valid Google Cloud project ID, the `[CONFIG_NAME]` must be a valid RuntimeConfig resource, the `[WAITER_NAME]` must match RFC 1035 segment specification, and the length of `[WAITER_NAME]` must be less than 64 bytes. After you create a Waiter resource, you cannot change the resource name.
  late final Output<String> name;
  late final Output<String> project;

  /// An optional but recommended unique `request_id`. If the server receives two `create()` requests with the same `request_id`, then the second request will be ignored and the first resource created and stored in the backend is returned. Empty `request_id` fields are ignored. It is responsibility of the client to ensure uniqueness of the `request_id` strings. `request_id` strings are limited to 64 characters.
  late final Output<String?> requestId;

  /// [Required] The success condition. If this condition is met, `done` will be set to `true` and the `error` value will remain unset. The failure condition takes precedence over the success condition. If both conditions are met, a failure will be indicated.
  late final Output<EndConditionResponse> success;

  /// [Required] Specifies the timeout of the waiter in seconds, beginning from the instant that `waiters().create` method is called. If this time elapses before the success or failure conditions are met, the waiter fails and sets the `error` code to `DEADLINE_EXCEEDED`.
  late final Output<String> timeout;

  Waiter(
    String name, {
    WaiterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:runtimeconfig/v1beta1:Waiter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.done = Output.createUnknown<bool>();
    this.error = Output.createUnknown<StatusResponse25>();
    this.failure = Output.createUnknown<EndConditionResponse>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.success = Output.createUnknown<EndConditionResponse>();
    this.timeout = Output.createUnknown<String>();
  }
}
