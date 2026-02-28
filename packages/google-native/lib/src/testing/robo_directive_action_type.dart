/// Required. The type of action that Robo should perform on the specified element.
enum RoboDirectiveActionType {
  actionTypeUnspecified("ACTION_TYPE_UNSPECIFIED"),
  singleClick("SINGLE_CLICK"),
  enterText("ENTER_TEXT"),
  ignore("IGNORE");

  const RoboDirectiveActionType(this.value);
  final String value;

  static RoboDirectiveActionType fromValue(String value) {
    for (final item in RoboDirectiveActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoboDirectiveActionType value: $value');
  }
}
