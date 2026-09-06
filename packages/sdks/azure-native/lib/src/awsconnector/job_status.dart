import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum JobStatus implements pulumi.PulumiEnum<String> {
  cANCELLED("CANCELLED"),
  cOMPLETE("COMPLETE"),
  iDLE("IDLE"),
  pAUSED("PAUSED"),
  rUNNING("RUNNING"),
  uSERPAUSED("USER_PAUSED");

  const JobStatus(this.wireValue);
  @override
  final String wireValue;

  static JobStatus fromValue(String value) {
    for (final item in JobStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStatus value: $value');
  }
}
