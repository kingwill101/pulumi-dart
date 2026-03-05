/// The StartTLSPolicy setting of the SMTP configuration
/// https://pkg.go.dev/github.com/go-mail/mail#StartTLSPolicy
enum StartTLSPolicy {
  valueOpportunisticStartTLS("OpportunisticStartTLS"),
  valueMandatoryStartTLS("MandatoryStartTLS"),
  valueNoStartTLS("NoStartTLS");

  const StartTLSPolicy(this.wireValue);
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

