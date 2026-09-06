import 'package:pulumi/pulumi.dart' as pulumi;

/// The value indicating whether the RosettaNet PIP is used for a single action.
enum RosettaNetActionType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueSingleAction("SingleAction"),
  valueDoubleAction("DoubleAction");

  const RosettaNetActionType(this.wireValue);
  @override
  final String wireValue;

  static RosettaNetActionType fromValue(String value) {
    for (final item in RosettaNetActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RosettaNetActionType value: $value');
  }
}
