/// The type of the managed configuration.
enum AkriConnectorTemplateManagedConfigurationType {
  imageConfiguration("ImageConfiguration"),
  statefulSetConfiguration("StatefulSetConfiguration");

  const AkriConnectorTemplateManagedConfigurationType(this.wireValue);
  final String wireValue;

  static AkriConnectorTemplateManagedConfigurationType fromValue(String value) {
    for (final item in AkriConnectorTemplateManagedConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AkriConnectorTemplateManagedConfigurationType value: $value',
    );
  }
}
