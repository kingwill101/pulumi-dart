import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode to create a new HorizonDB cluster.
enum CreateModeCluster implements pulumi.PulumiEnum<String> {
  create("Create"),
  update("Update"),
  pointInTimeRestore("PointInTimeRestore");

  const CreateModeCluster(this.wireValue);
  @override
  final String wireValue;

  static CreateModeCluster fromValue(String value) {
    for (final item in CreateModeCluster.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateModeCluster value: $value');
  }
}
