import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of actions that can be performed.
enum TapRuleActionType implements pulumi.PulumiEnum<String> {
  valueDrop("Drop"),
  valueCount("Count"),
  valueLog("Log"),
  valueReplicate("Replicate"),
  valueGoto("Goto"),
  valueRedirect("Redirect"),
  valueMirror("Mirror");

  const TapRuleActionType(this.wireValue);
  @override
  final String wireValue;

  static TapRuleActionType fromValue(String value) {
    for (final item in TapRuleActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TapRuleActionType value: $value');
  }
}
