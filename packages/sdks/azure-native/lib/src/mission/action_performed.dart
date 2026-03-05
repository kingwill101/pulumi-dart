/// Action Performed by approver
enum ActionPerformed {
  approved("Approved"),
  rejected("Rejected");

  const ActionPerformed(this.wireValue);
  final String wireValue;

  static ActionPerformed fromValue(String value) {
    for (final item in ActionPerformed.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionPerformed value: $value');
  }
}

