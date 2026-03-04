/// Status of the issue.
enum State {
  valueProposed("proposed"),
  valueOpen("open"),
  valueRemoved("removed"),
  valueResolved("resolved"),
  valueClosed("closed");

  const State(this.wireValue);
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
