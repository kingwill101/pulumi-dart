import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of rule to initialize
enum RuleKind implements pulumi.PulumiEnum<String> {
  eduQualification("eduQualification"),
  businessVerification("businessVerification");

  const RuleKind(this.wireValue);
  @override
  final String wireValue;

  static RuleKind fromValue(String value) {
    for (final item in RuleKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleKind value: $value');
  }
}
