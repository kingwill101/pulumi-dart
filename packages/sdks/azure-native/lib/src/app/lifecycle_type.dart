import 'package:pulumi/pulumi.dart' as pulumi;

/// The lifecycle type of the session pool.
enum LifecycleType implements pulumi.PulumiEnum<String> {
  valueTimed("Timed"),
  valueOnContainerExit("OnContainerExit");

  const LifecycleType(this.wireValue);
  @override
  final String wireValue;

  static LifecycleType fromValue(String value) {
    for (final item in LifecycleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecycleType value: $value');
  }
}
