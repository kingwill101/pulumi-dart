// ignore_for_file: unused_element, unnecessary_cast

/// Directs Robo to interact with a specific UI element if it is encountered during the crawl. Currently, Robo can perform text entry or element click.
class RoboDirectiveResponse {
  /// The type of action that Robo should perform on the specified element.
  final String actionType;

  /// The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name.
  final String inputText;

  /// The android resource name of the target UI element. For example, in Java: R.string.foo in xml: @string/foo Only the "foo" part is needed. Reference doc: https://developer.android.com/guide/topics/resources/accessing-resources.html
  final String resourceName;

  /// Creates a new [RoboDirectiveResponse].
  /// [actionType] The type of action that Robo should perform on the specified element.
  /// [inputText] The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name.
  /// [resourceName] The android resource name of the target UI element. For example, in Java: R.string.foo in xml: @string/foo Only the "foo" part is needed. Reference doc: https://developer.android.com/guide/topics/resources/accessing-resources.html
  RoboDirectiveResponse({
    required this.actionType,
    required this.inputText,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionType'] = actionType;
    map['inputText'] = inputText;
    map['resourceName'] = resourceName;
    return map;
  }

  factory RoboDirectiveResponse.fromMap(Map<String, dynamic> map) {
    return RoboDirectiveResponse(
      actionType: map['actionType'] as String,
      inputText: map['inputText'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}
