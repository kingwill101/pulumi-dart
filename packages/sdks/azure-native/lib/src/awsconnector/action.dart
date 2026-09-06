import 'package:pulumi/pulumi.dart' as pulumi;

/// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
enum Action implements pulumi.PulumiEnum<String> {
  aLLOW("ALLOW"),
  bLOCK("BLOCK"),
  cAPTCHA("CAPTCHA"),
  cHALLENGE("CHALLENGE"),
  cOUNT("COUNT"),
  eXCLUDEDASCOUNT("EXCLUDED_AS_COUNT");

  const Action(this.wireValue);
  @override
  final String wireValue;

  static Action fromValue(String value) {
    for (final item in Action.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Action value: $value');
  }
}
