/// Property value
enum NotebookInstanceStatus {
  deleting("Deleting"),
  failed("Failed"),
  inService("InService"),
  pending("Pending"),
  stopped("Stopped"),
  stopping("Stopping"),
  updating("Updating");

  const NotebookInstanceStatus(this.value);
  final String value;

  static NotebookInstanceStatus fromValue(String value) {
    for (final item in NotebookInstanceStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookInstanceStatus value: $value');
  }
}

