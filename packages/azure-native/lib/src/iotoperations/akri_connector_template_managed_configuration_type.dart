/// The type of the managed configuration.
enum AkriConnectorTemplateManagedConfigurationType {
  imageConfiguration("ImageConfiguration"),
  statefulSetConfiguration("StatefulSetConfiguration");

  const AkriConnectorTemplateManagedConfigurationType(this.value);
  final String value;

  static AkriConnectorTemplateManagedConfigurationType fromValue(String value) {
    for (final item in AkriConnectorTemplateManagedConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorTemplateManagedConfigurationType value: $value');
  }
}

