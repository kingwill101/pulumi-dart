// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../hook_push_option/hook_push_option.dart';

/// The set of arguments for Hook.
class HookArgs {
  /// Determines if the hook disabled or not.
  /// Set to true to stop sending traffic.
  final Input<bool>? disabled;

  /// The events that trigger hook on.
  /// Each value may be one of: `PUSH`, `PULL_REQUEST`.
  final Input<List<String>>? events;

  /// The ID for the Hook.
  final Input<String> hookId;

  /// The location for the Repository.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The trigger option for push events.
  /// Structure is documented below.
  final Input<HookPushOption>? pushOption;

  /// The ID for the Repository.
  final Input<String> repositoryId;

  /// The sensitive query string to be appended to the target URI.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final Input<String>? sensitiveQueryString;

  /// The target URI to which the payloads will be delivered.
  final Input<String> targetUri;

  HookArgs({
    this.disabled,
    this.events,
    required this.hookId,
    required this.location,
    this.project,
    this.pushOption,
    required this.repositoryId,
    this.sensitiveQueryString,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final eventsValue = events;
    if (eventsValue != null) {
      map['events'] = eventsValue;
    }
    map['hookId'] = hookId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pushOptionValue = pushOption;
    if (pushOptionValue != null) {
      map['pushOption'] =
          Input.mapOptionalInputValue<HookPushOption, Map<String, dynamic>>(
              pushOptionValue, (value) => value.toMap());
    }
    map['repositoryId'] = repositoryId;
    final sensitiveQueryStringValue = sensitiveQueryString;
    if (sensitiveQueryStringValue != null) {
      map['sensitiveQueryString'] = sensitiveQueryStringValue;
    }
    map['targetUri'] = targetUri;
    return map;
  }

  factory HookArgs.fromMap(Map<String, dynamic> map) {
    return HookArgs(
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      events: Input.asOptionalInput<List<String>>(map['events']),
      hookId: Input.asInput<String>(map['hookId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      pushOption: Input.asOptionalInput<HookPushOption>(map['pushOption']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      sensitiveQueryString:
          Input.asOptionalInput<String>(map['sensitiveQueryString']),
      targetUri: Input.asInput<String>(map['targetUri']),
    );
  }
}
