/// The type of app.
enum AppType {
  canvas("Canvas"),
  jupyterServer("JupyterServer"),
  kernelGateway("KernelGateway"),
  rSessionGateway("RSessionGateway"),
  rStudioServerPro("RStudioServerPro");

  const AppType(this.value);
  final String value;

  static AppType fromValue(String value) {
    for (final item in AppType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppType value: $value');
  }
}

