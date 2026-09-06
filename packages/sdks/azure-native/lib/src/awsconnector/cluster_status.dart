import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ClusterStatus implements pulumi.PulumiEnum<String> {
  aCTIVE("ACTIVE"),
  cREATING("CREATING"),
  dELETING("DELETING"),
  fAILED("FAILED"),
  pENDING("PENDING"),
  uPDATING("UPDATING");

  const ClusterStatus(this.wireValue);
  @override
  final String wireValue;

  static ClusterStatus fromValue(String value) {
    for (final item in ClusterStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterStatus value: $value');
  }
}
