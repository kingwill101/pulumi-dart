import 'package:pulumi/pulumi.dart' as pulumi;

/// The StartTLSPolicy setting of the SMTP configuration
/// https://pkg.go.dev/github.com/go-mail/mail#StartTLSPolicy
enum StartTLSPolicy implements pulumi.PulumiEnum<String> {
  valueOpportunisticStartTLS("OpportunisticStartTLS"),
  valueMandatoryStartTLS("MandatoryStartTLS"),
  valueNoStartTLS("NoStartTLS");

  const StartTLSPolicy(this.wireValue);
  @override
  final String wireValue;

  static StartTLSPolicy fromValue(String value) {
    for (final item in StartTLSPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StartTLSPolicy value: $value');
  }
}
