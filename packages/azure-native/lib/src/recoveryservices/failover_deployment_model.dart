/// The failover deployment model.
enum FailoverDeploymentModel {
  valueNotApplicable("NotApplicable"),
  valueClassic("Classic"),
  valueResourceManager("ResourceManager");

  const FailoverDeploymentModel(this.value);
  final String value;

  static FailoverDeploymentModel fromValue(String value) {
    for (final item in FailoverDeploymentModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverDeploymentModel value: $value');
  }
}

