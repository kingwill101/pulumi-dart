/// The drive's current state.
enum DriveState {
  valueSpecified("Specified"),
  valueReceived("Received"),
  valueNeverReceived("NeverReceived"),
  valueTransferring("Transferring"),
  valueCompleted("Completed"),
  valueCompletedMoreInfo("CompletedMoreInfo"),
  valueShippedBack("ShippedBack");

  const DriveState(this.value);
  final String value;

  static DriveState fromValue(String value) {
    for (final item in DriveState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DriveState value: $value');
  }
}

