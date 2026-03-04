/// Type of repair action (replace, restart, reimage) that will be used for repairing unhealthy virtual machines in the scale set. Default value is replace.
enum RepairAction {
  replace("Replace"),
  restart("Restart"),
  reimage("Reimage");

  const RepairAction(this.wireValue);
  final String wireValue;

  static RepairAction fromValue(String value) {
    for (final item in RepairAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepairAction value: $value');
  }
}
