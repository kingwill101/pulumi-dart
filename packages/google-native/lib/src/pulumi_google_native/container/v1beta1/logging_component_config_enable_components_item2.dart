enum LoggingComponentConfigEnableComponentsItem2 {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  systemComponents("SYSTEM_COMPONENTS"),
  workloads("WORKLOADS"),
  apiserver("APISERVER"),
  scheduler("SCHEDULER"),
  controllerManager("CONTROLLER_MANAGER");

  const LoggingComponentConfigEnableComponentsItem2(this.value);
  final String value;

  static LoggingComponentConfigEnableComponentsItem2 fromValue(String value) {
    for (final item in LoggingComponentConfigEnableComponentsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LoggingComponentConfigEnableComponentsItem2 value: $value');
  }
}
