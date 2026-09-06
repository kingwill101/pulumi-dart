import 'package:pulumi/pulumi.dart' as pulumi;

/// The default value is Pool. If the pool is running Windows a value of Task should be specified if stricter isolation between tasks is required. For example, if the task mutates the registry in a way which could impact other tasks, or if certificates have been specified on the pool which should not be accessible by normal tasks but should be accessible by start tasks.
enum AutoUserScope implements pulumi.PulumiEnum<String> {
  task("Task"),
  pool("Pool");

  const AutoUserScope(this.wireValue);
  @override
  final String wireValue;

  static AutoUserScope fromValue(String value) {
    for (final item in AutoUserScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoUserScope value: $value');
  }
}
