/// Data types sent to workspace.
enum AdditionalWorkspaceDataType {
  valueAlerts("Alerts"),
  valueRawEvents("RawEvents");

  const AdditionalWorkspaceDataType(this.value);
  final String value;

  static AdditionalWorkspaceDataType fromValue(String value) {
    for (final item in AdditionalWorkspaceDataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalWorkspaceDataType value: $value');
  }
}

