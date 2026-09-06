import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum NotebookInstanceStatus implements pulumi.PulumiEnum<String> {
  deleting("Deleting"),
  failed("Failed"),
  inService("InService"),
  pending("Pending"),
  stopped("Stopped"),
  stopping("Stopping"),
  updating("Updating");

  const NotebookInstanceStatus(this.wireValue);
  @override
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
