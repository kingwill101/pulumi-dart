import 'package:pulumi/pulumi.dart' as pulumi;

enum PauseTimeoutAction implements pulumi.PulumiEnum<String> {
  rOLLBACK("ROLLBACK"),
  cONTINUE("CONTINUE");

  const PauseTimeoutAction(this.wireValue);
  @override
  final String wireValue;

  static PauseTimeoutAction fromValue(String value) {
    for (final item in PauseTimeoutAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PauseTimeoutAction value: $value');
  }
}
