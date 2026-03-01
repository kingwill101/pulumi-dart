/// Action Performed by approver
enum ActionPerformed {
  approved("Approved"),
  rejected("Rejected");

  const ActionPerformed(this.value);
  final String value;

  static ActionPerformed fromValue(String value) {
    for (final item in ActionPerformed.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionPerformed value: $value');
  }
}

