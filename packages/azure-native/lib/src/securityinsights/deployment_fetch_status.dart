/// Status while fetching the last deployment.
enum DeploymentFetchStatus {
  valueSuccess("Success"),
  valueUnauthorized("Unauthorized"),
  valueNotFound("NotFound");

  const DeploymentFetchStatus(this.value);
  final String value;

  static DeploymentFetchStatus fromValue(String value) {
    for (final item in DeploymentFetchStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentFetchStatus value: $value');
  }
}

