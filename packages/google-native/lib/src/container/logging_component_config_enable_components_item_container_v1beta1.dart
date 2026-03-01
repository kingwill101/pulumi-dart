enum LoggingComponentConfigEnableComponentsItemContainerV1beta1 {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  systemComponents("SYSTEM_COMPONENTS"),
  workloads("WORKLOADS"),
  apiserver("APISERVER"),
  scheduler("SCHEDULER"),
  controllerManager("CONTROLLER_MANAGER");

  const LoggingComponentConfigEnableComponentsItemContainerV1beta1(this.value);
  final String value;

  static LoggingComponentConfigEnableComponentsItemContainerV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in LoggingComponentConfigEnableComponentsItemContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown LoggingComponentConfigEnableComponentsItemContainerV1beta1 value: $value',
    );
  }
}
