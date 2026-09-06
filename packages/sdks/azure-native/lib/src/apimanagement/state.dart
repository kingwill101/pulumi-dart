import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the issue.
enum State implements pulumi.PulumiEnum<String> {
  valueProposed("proposed"),
  valueOpen("open"),
  valueRemoved("removed"),
  valueResolved("resolved"),
  valueClosed("closed");

  const State(this.wireValue);
  @override
  final String wireValue;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}
