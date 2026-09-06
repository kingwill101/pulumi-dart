import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of app.
enum AppType implements pulumi.PulumiEnum<String> {
  canvas("Canvas"),
  jupyterServer("JupyterServer"),
  kernelGateway("KernelGateway"),
  rSessionGateway("RSessionGateway"),
  rStudioServerPro("RStudioServerPro");

  const AppType(this.wireValue);
  @override
  final String wireValue;

  static AppType fromValue(String value) {
    for (final item in AppType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppType value: $value');
  }
}
