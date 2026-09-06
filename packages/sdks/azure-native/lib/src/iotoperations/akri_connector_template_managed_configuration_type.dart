import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the managed configuration.
enum AkriConnectorTemplateManagedConfigurationType implements pulumi.PulumiEnum<String> {
  imageConfiguration("ImageConfiguration"),
  statefulSetConfiguration("StatefulSetConfiguration");

  const AkriConnectorTemplateManagedConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static AkriConnectorTemplateManagedConfigurationType fromValue(String value) {
    for (final item in AkriConnectorTemplateManagedConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorTemplateManagedConfigurationType value: $value');
  }
}
