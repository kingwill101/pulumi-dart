// ignore_for_file: unused_element, unnecessary_cast

import 'robo_directive_action_type.dart';

/// Directs Robo to interact with a specific UI element if it is encountered during the crawl. Currently, Robo can perform text entry or element click.
class RoboDirective {
  /// The type of action that Robo should perform on the specified element.
  final RoboDirectiveActionType actionType;

  /// The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name.
  final String? inputText;

  /// The android resource name of the target UI element. For example, in Java: R.string.foo in xml: @string/foo Only the "foo" part is needed. Reference doc: https://developer.android.com/guide/topics/resources/accessing-resources.html
  final String resourceName;

  /// Creates a new [RoboDirective].
  /// [actionType] The type of action that Robo should perform on the specified element.
  /// [inputText] The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name.
  /// [resourceName] The android resource name of the target UI element. For example, in Java: R.string.foo in xml: @string/foo Only the "foo" part is needed. Reference doc: https://developer.android.com/guide/topics/resources/accessing-resources.html
  RoboDirective({
    required this.actionType,
    this.inputText,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionType'] = actionType.value;
    final inputTextValue = inputText;
    if (inputTextValue != null) {
      map['inputText'] = inputTextValue;
    }
    map['resourceName'] = resourceName;
    return map;
  }

  factory RoboDirective.fromMap(Map<String, dynamic> map) {
    return RoboDirective(
      actionType:
          RoboDirectiveActionType.fromValue(map['actionType'] as String),
      inputText: map['inputText'] == null ? null : map['inputText'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}
