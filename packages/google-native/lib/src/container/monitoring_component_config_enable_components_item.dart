enum MonitoringComponentConfigEnableComponentsItem {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  systemComponents("SYSTEM_COMPONENTS"),
  apiserver("APISERVER"),
  scheduler("SCHEDULER"),
  controllerManager("CONTROLLER_MANAGER"),
  storage("STORAGE"),
  hpa("HPA"),
  pod("POD"),
  daemonset("DAEMONSET"),
  deployment("DEPLOYMENT"),
  statefulset("STATEFULSET");

  const MonitoringComponentConfigEnableComponentsItem(this.value);
  final String value;

  static MonitoringComponentConfigEnableComponentsItem fromValue(String value) {
    for (final item in MonitoringComponentConfigEnableComponentsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown MonitoringComponentConfigEnableComponentsItem value: $value',
    );
  }
}
