/// The type of app.
enum AppType {
  canvas("Canvas"),
  jupyterServer("JupyterServer"),
  kernelGateway("KernelGateway"),
  rSessionGateway("RSessionGateway"),
  rStudioServerPro("RStudioServerPro");

  const AppType(this.wireValue);
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

