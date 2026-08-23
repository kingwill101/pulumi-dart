/// Property value
enum NotebookInstanceStatus {
  deleting("Deleting"),
  failed("Failed"),
  inService("InService"),
  pending("Pending"),
  stopped("Stopped"),
  stopping("Stopping"),
  updating("Updating");

  const NotebookInstanceStatus(this.wireValue);
  final String wireValue;

  static NotebookInstanceStatus fromValue(String value) {
    for (final item in NotebookInstanceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookInstanceStatus value: $value');
  }
}
