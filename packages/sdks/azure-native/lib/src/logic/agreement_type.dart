import 'package:pulumi/pulumi.dart' as pulumi;

/// The agreement type.
enum AgreementType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueAS2("AS2"),
  valueX12("X12"),
  valueEdifact("Edifact");

  const AgreementType(this.wireValue);
  @override
  final String wireValue;

  static AgreementType fromValue(String value) {
    for (final item in AgreementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgreementType value: $value');
  }
}
