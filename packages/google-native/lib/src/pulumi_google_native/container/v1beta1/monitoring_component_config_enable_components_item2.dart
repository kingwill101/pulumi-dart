enum MonitoringComponentConfigEnableComponentsItem2 {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  systemComponents("SYSTEM_COMPONENTS"),
  workloads("WORKLOADS"),
  apiserver("APISERVER"),
  scheduler("SCHEDULER"),
  controllerManager("CONTROLLER_MANAGER"),
  storage("STORAGE"),
  hpa("HPA"),
  pod("POD"),
  daemonset("DAEMONSET"),
  deployment("DEPLOYMENT"),
  statefulset("STATEFULSET");

  const MonitoringComponentConfigEnableComponentsItem2(this.value);
  final String value;

  static MonitoringComponentConfigEnableComponentsItem2 fromValue(
      String value) {
    for (final item in MonitoringComponentConfigEnableComponentsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MonitoringComponentConfigEnableComponentsItem2 value: $value');
  }
}
