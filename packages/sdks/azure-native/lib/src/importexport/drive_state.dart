import 'package:pulumi/pulumi.dart' as pulumi;

/// The drive's current state.
enum DriveState implements pulumi.PulumiEnum<String> {
  valueSpecified("Specified"),
  valueReceived("Received"),
  valueNeverReceived("NeverReceived"),
  valueTransferring("Transferring"),
  valueCompleted("Completed"),
  valueCompletedMoreInfo("CompletedMoreInfo"),
  valueShippedBack("ShippedBack");

  const DriveState(this.wireValue);
  @override
  final String wireValue;

  static DriveState fromValue(String value) {
    for (final item in DriveState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DriveState value: $value');
  }
}
