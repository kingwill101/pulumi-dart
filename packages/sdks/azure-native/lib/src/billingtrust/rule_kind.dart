/// The kind of rule to initialize
enum RuleKind {
  eduQualification("eduQualification"),
  businessVerification("businessVerification");

  const RuleKind(this.wireValue);
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
