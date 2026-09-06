import 'package:pulumi/pulumi.dart' as pulumi;

/// Governance option for this service (Allow, Deny, ExceptionOnly, or NotApplicable).
enum Option implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny"),
  valueExceptionOnly("ExceptionOnly"),
  valueNotApplicable("NotApplicable");

  const Option(this.wireValue);
  @override
  final String wireValue;

  static Option fromValue(String value) {
    for (final item in Option.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Option value: $value');
  }
}
