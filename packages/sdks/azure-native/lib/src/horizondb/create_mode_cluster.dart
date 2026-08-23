/// The mode to create a new HorizonDB cluster.
enum CreateModeCluster {
  create("Create"),
  update("Update"),
  pointInTimeRestore("PointInTimeRestore");

  const CreateModeCluster(this.wireValue);
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
