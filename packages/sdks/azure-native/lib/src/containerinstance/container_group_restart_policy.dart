import 'package:pulumi/pulumi.dart' as pulumi;

/// Restart policy for all containers within the container group.
/// - `Always` Always restart
/// - `OnFailure` Restart on failure
/// - `Never` Never restart
enum ContainerGroupRestartPolicy implements pulumi.PulumiEnum<String> {
  valueAlways("Always"),
  valueOnFailure("OnFailure"),
  valueNever("Never");

  const ContainerGroupRestartPolicy(this.wireValue);
  @override
  final String wireValue;

  static ContainerGroupRestartPolicy fromValue(String value) {
    for (final item in ContainerGroupRestartPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupRestartPolicy value: $value');
  }
}
