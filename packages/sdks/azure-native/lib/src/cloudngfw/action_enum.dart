import 'package:pulumi/pulumi.dart' as pulumi;

/// rule action
enum ActionEnum implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDenySilent("DenySilent"),
  valueDenyResetServer("DenyResetServer"),
  valueDenyResetBoth("DenyResetBoth");

  const ActionEnum(this.wireValue);
  @override
  final String wireValue;

  static ActionEnum fromValue(String value) {
    for (final item in ActionEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionEnum value: $value');
  }
}
