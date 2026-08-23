/// Desired enablement state of the Defender For Servers service.
enum DesiredEnablementState {
  enable("Enable"),
  disable("Disable");

  const DesiredEnablementState(this.wireValue);
  final String wireValue;

  static DesiredEnablementState fromValue(String value) {
    for (final item in DesiredEnablementState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DesiredEnablementState value: $value');
  }
}
