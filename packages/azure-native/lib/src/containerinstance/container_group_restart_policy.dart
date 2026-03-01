/// Restart policy for all containers within the container group.
/// - `Always` Always restart
/// - `OnFailure` Restart on failure
/// - `Never` Never restart
enum ContainerGroupRestartPolicy {
  valueAlways("Always"),
  valueOnFailure("OnFailure"),
  valueNever("Never");

  const ContainerGroupRestartPolicy(this.value);
  final String value;

  static ContainerGroupRestartPolicy fromValue(String value) {
    for (final item in ContainerGroupRestartPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupRestartPolicy value: $value');
  }
}

